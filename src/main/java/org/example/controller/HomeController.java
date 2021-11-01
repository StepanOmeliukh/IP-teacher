package org.example.controller;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.dom4j.rule.Mode;
import org.example.model.Contact;
import org.example.model.Test;
import org.example.model.User;
import org.example.model.util.VarietyTests;
import org.example.service.AllUseService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
@AllArgsConstructor
@NoArgsConstructor
public class HomeController {

    @Autowired
    private AllUseService allUseService;
    @Autowired
    private UserService userService;

    List<Test> result = new ArrayList<>();

    @RequestMapping("/")
    public String getIndex(Model model){
        if (!allUseService.getCurrentUser().isEmpty())
            model.addAttribute("user", userService.getUserByEmail(allUseService.getCurrentUser()));

        return "index";
    }

    @RequestMapping("/contact")
    public String contact(
            @RequestParam(required = false, name = "name") String name,
            @RequestParam(required = false, name = "email") String email,
            @RequestParam(required = false, name = "phone") String phone,
            @RequestParam(required = false, name = "message") String message
    ) {
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setPhone(phone);
        contact.setMessage(message);
        contact.setUser(userService.getUserByEmail(allUseService.getCurrentUser()));;
        allUseService.saveContact(contact);

        return "redirect:/";
    }

    @RequestMapping("/access-denied")
    public String error(){
        return "error";
    }

    @RequestMapping("/profile")
    public String userProfile(Model model,
                              @ModelAttribute("class") String clas
    ) {
        String email = allUseService.getCurrentUser();
        User user = userService.getUserByEmail(email);

        List<VarietyTests> varietyTests = new ArrayList<>();
        varietyTests.add(VarietyTests.CLASSES);
        varietyTests.add(VarietyTests.NOCLASSES);
        varietyTests.add(VarietyTests.UNDERCLASSES);

        model.addAttribute("firstName", user.getFirstName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("email", email);
        model.addAttribute("topics", varietyTests);

        if (!result.isEmpty()) {
            Integer allTime = 0;
            for (Test o : result)
                allTime += o.getTime();
            model.addAttribute("tests", result);
            model.addAttribute("allTime", allTime);
        }

        model.addAttribute("clas", clas.toLowerCase(Locale.ROOT));

        return "profile";
    }

    @RequestMapping("/profile/choose")
    public String userProfile(@RequestParam("clas") String clas,
                              RedirectAttributes ra) {

        String email = allUseService.getCurrentUser();
        result = allUseService.getAllUsersTestsByVariety(clas, userService.getUserByEmail(email).getId());

        ra.addAttribute("class", clas);

        return "redirect:/profile";
    }

    @PreAuthorize("hasAuthority('developers:edit')")
    @RequestMapping("/admin")
    public String adminProfile(Model model) {
        String email = allUseService.getCurrentUser();
        User user = userService.getUserByEmail(email);

        model.addAttribute("firstName", user.getFirstName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("email", email);
        model.addAttribute("user", userService.getAllUsers(email));

        return "admin";
    }

    @PreAuthorize("hasAuthority('developers:edit')")
    @RequestMapping("/admin/update")
    public String adminUpdate(
            @RequestParam(required = false, name = "classes") Integer classes,
            @RequestParam(required = false, name = "noclasses") Integer noClasses,
            @RequestParam(required = false, name = "underclasses") Integer underClasses,
            @RequestParam(required = false, name = "id") Long id
    ) {
        userService.updateClass(classes, noClasses, underClasses, id);

        return "redirect:/admin";
    }
}