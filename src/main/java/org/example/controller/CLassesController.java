package org.example.controller;

import org.example.model.util.Regime;
import org.example.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/nets/classes")
public class CLassesController {

    @Autowired
    private ClassesService classesService;

    private String[] firstTestValues;

    private String ip;

    @RequestMapping("/theory")
    public String theory() {
        return "";
    }

    @RequestMapping("/trainy")
    public String trainy() {
//        String regime = Regime.TRAINY.toString();

        return "classes";
    }

    @RequestMapping("/trainy/generate")
    public String trainAction(Model model, @RequestParam(name = "check", required = false) boolean check4) {
        String regime = Regime.TRAINY.toString();

        ip = classesService.genIPv4("CLASSES", check4);
//        firstTestValues = classesService.getAllValues();

        model.addAttribute("ip", ip);
        return "classes";
    }

    @RequestMapping("/trainy/check")
    public String checkAnswers(Model model,
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
        String result = classesService.checkAnswers(taskArray);

        model.addAttribute("result", result);

        return "classes";
    }

    @RequestMapping("/control")
    public String classes() {
        String regime = Regime.CONTROL.toString();

        return "classes";
    }
}
