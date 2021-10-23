package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nets/underclasses")
public class UnderClassesController {

    @RequestMapping("/theory")
    public String theory() {
        return "";
    }

    @RequestMapping("/trainy")
    public String trainy() {
        return "";
    }

    @RequestMapping("/control")
    public String classes() {
        return "classes";
    }
}