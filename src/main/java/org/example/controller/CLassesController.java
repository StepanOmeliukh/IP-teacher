package org.example.controller;

import org.example.model.util.Regime;
import org.example.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/nets/classes")
public class CLassesController {

    @Autowired
    private ClassesService classesService;

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
    public String trainAction(Model model, @RequestParam(name = "checkbox4") String check4) {
        String regime = Regime.TRAINY.toString();

        String result = classesService.genIPv4("CLASSES", check4);
        
        model.addAttribute("ip", result);
        return "classes";
    }

    @RequestMapping("/control")
    public String classes() {
        String regime = Regime.CONTROL.toString();

        return "classes";
    }
}
