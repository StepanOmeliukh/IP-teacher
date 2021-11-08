package org.example.controller;

import org.example.dao.UserDAO;
import org.example.model.util.Regime;
import org.example.model.util.VarietyTests;
import org.example.service.AllUseService;
import org.example.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Locale;

@Controller
@RequestMapping("/nets/classes")
public class ClassesController {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private ClassesService classesService;
    @Autowired
    private AllUseService allUseService;

    private String ip = "";
    private String result = "";

    // тут опис режиму
    private String content = "A";

    @RequestMapping("/theory")
    public String theory(Model model) {
        model.addAttribute("class", VarietyTests.CLASSES.name());
        model.addAttribute("content", content);
        model.addAttribute("classorig", VarietyTests.CLASSES.name().toLowerCase(Locale.ROOT));

        return "theory";
    }

    @RequestMapping("/trainy")
    public String trainy(Model model) {
        if (!ip.equals(""))
            model.addAttribute("ip", ip);
        if (!result.equals(""))
            model.addAttribute("result", result);
        model.addAttribute("class", "trainy");
        return "classes";
    }

    @RequestMapping("/trainy/generate")
    public String trainyAction(Model model) {
        ip = classesService.genIPv4(VarietyTests.CLASSES.name(), true);

        return "redirect:/nets/classes/trainy";
    }

    @RequestMapping("/trainy/check")
    public String checkTrainyAnswers(Model model,
                               @RequestParam(required = false, name = "task1") String task1,
                               @RequestParam(required = false, name = "task2") String task2,
                               @RequestParam(required = false, name = "task3") String task3,
                               @RequestParam(required = false, name = "task4") String task4,
                               @RequestParam(required = false, name = "task5") String task5,
                               @RequestParam(required = false, name = "task6") String task6,
                               @RequestParam(required = false, name = "task7") String task7,
                               @RequestParam(required = false, name = "task8") String task8,
                               @RequestParam(required = false, name = "task9") String task9,
                               @RequestParam(required = false, name = "task10") String task10) {
        String[] taskArray = {task1, task2, task3, task4, task5, task6, task7, task8, task9, task10};
        if (ip.isEmpty())
            return "redirect:/nets/classes/trainy";

        result = classesService.checkAnswers(taskArray);
        ip = "";

        return "redirect:/nets/classes/trainy";
    }

    @RequestMapping("/control")
    public String control(Model model) {
        if (!ip.equals(""))
            model.addAttribute("ip", ip);
        if (!result.equals(""))
            model.addAttribute("result", result);
        model.addAttribute("class", "control");

        return "classes";
    }

    @RequestMapping("/control/generate")
    public String controlAction(Model model) {
        Integer count = classesService.getCount(VarietyTests.CLASSES.name());

        if (count <= 0) {
            ip = "You have any tries!";
            return "redirect:/nets/classes/control";
        }

        ip = classesService.genIPv4(VarietyTests.CLASSES.name(), true);
        userDAO.subtractCount(allUseService.getCurrentUser());

        return "redirect:/nets/classes/control";
    }

    @RequestMapping("/control/check")
    public String checkControlAnswers(Model model,
                               @RequestParam(required = false, name = "task1") String task1,
                               @RequestParam(required = false, name = "task2") String task2,
                               @RequestParam(required = false, name = "task3") String task3,
                               @RequestParam(required = false, name = "task4") String task4,
                               @RequestParam(required = false, name = "task5") String task5,
                               @RequestParam(required = false, name = "task6") String task6,
                               @RequestParam(required = false, name = "task7") String task7,
                               @RequestParam(required = false, name = "task8") String task8,
                               @RequestParam(required = false, name = "task9") String task9,
                               @RequestParam(required = false, name = "task10") String task10,
                               @RequestParam(required = false, name = "time") Integer time) {
        String[] taskArray = {task1, task2, task3, task4, task5, task6, task7, task8, task9, task10};
        result = classesService.checkAnswers(taskArray);
        String regime = Regime.CONTROL.name();
        String vareity = VarietyTests.CLASSES.name();

        if (ip.isEmpty())
            return "redirect:/nets/classes/control";

        if (ip.equals("You have any tries!"))
            return "redirect:/nets/classes/control";

        classesService.saveTest(result, regime, vareity, time);
        ip = "";

        return "redirect:/nets/classes/control";
    }
}
