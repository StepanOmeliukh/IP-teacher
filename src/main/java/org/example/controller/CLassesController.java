package org.example.controller;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.example.dao.UserDAO;
import org.example.model.util.Regime;
import org.example.model.util.VarietyTests;
import org.example.service.AllUseService;
import org.example.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/nets/classes")
public class CLassesController {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private ClassesService classesService;
    @Autowired
    private AllUseService allUseService;

    private String ip = "";
    String result = "";

    @RequestMapping("/theory")
    public String theory() {
        return "";
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
        result = classesService.checkAnswers(taskArray);

        return "redirect:/nets/classes/trainy";
    }

    @RequestMapping("/control")
    public String classes(Model model) {
        if (!ip.equals(""))
            model.addAttribute("ip", ip);
        if (!result.equals(""))
            model.addAttribute("result", result);
        model.addAttribute("class", "control");

        return "classes";
    }

    @RequestMapping("/control/generate")
    public String controlAction(Model model) {
        Integer count = classesService.getCount();

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
                               @RequestParam(required = false, name = "task10") String task10) {
        String[] taskArray = {task1, task2, task3, task4, task5, task6, task7, task8, task9, task10};
        result = classesService.checkAnswers(taskArray);
        String regime = Regime.CONTROL.name();
        String vareity = VarietyTests.CLASSES.name();

        if (ip.equals("You have any tries!"))
            return "redirect:/nets/classes/control";

        classesService.saveTest(result, regime, vareity);

        return "redirect:/nets/classes/control";
    }
}
