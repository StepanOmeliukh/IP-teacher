package org.example.controller;

import org.example.model.User;
import org.example.service.AllUseService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HomeController {

    @Autowired
    private AllUseService allUseService;
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String getIndex(){
        return "index";
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping("/profile")
    public String userProfile(Model model) {
        String email = allUseService.getCurrentUser();
        User user = userService.getUserByEmail(email);

        model.addAttribute("firstName", user.getFirstName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("email", email);

        return "profile";
    }

    @RequestMapping("/admin")
    public String adminProfile() {
        return "admin";
    }
}