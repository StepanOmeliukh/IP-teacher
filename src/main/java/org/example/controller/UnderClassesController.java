package org.example.controller;

import org.example.model.util.VarietyTests;
import org.example.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Locale;

@Controller
@RequestMapping("/nets/underclasses")
public class UnderClassesController {

    @Autowired
    private ClassesService classesService;

    private String task1 = "For a given network IP address A and B determine the number of IP subnets included in this IP subnet, and the number of nodes (IP addresses of nodes) of one subnet.";
    private String task2 = "IP network A must be divided into B identical subnets, each of which uses the maximum number of nodes. Determine the prefix and mask of the subnet, the number of nodes (IP addresses of nodes) in all subnets.";
    private String task3 = "The IP network A must be divided into a subnet that has B nodes in each of them. Determine the prefix and mask of the subnet, the number of subnets, the exact number of nodes (IP addresses of nodes) that are part of one subnet and the total number of nodes (IP addresses of nodes) in all subnets.";
    private String task4 = "The IP network A is divided into subnets using the CIDR method, provided that the CIDR mask is b and the subnet mask is c. Determine the CIDR prefix, subnet prefix and mask, number of IP subnets, number of nodes (node IP addresses) included in one subnet, and total number of nodes (node IP addresses) in all subnets.";
    private String task5 = "The IP network A is divided into subnets, each of which has b nodes. Define the following parameters for the last subnet: the IP address of the subnet, the minimum and maximum IP addresses of the range that can be used to address the nodes; broadcast IP address; subnet prefix and mask.";
    private String task6 = "An IP network is divided into at least a subnet, each of which contains b nodes. Calculate the class of the total (aggregate) IP address of the class network and its prefix.";
    private String task7 = "An IP network is divided into at least a subnet, each of which contains b nodes. Calculate the number of bits allocated for addressing subnets, the number of bits allocated for addressing nodes, the CIDR prefix, and the subnet prefix.";
    private String task8 = "For a given set of subnet IP addresses, calculate the total (aggregate) network address.\na\nb\nc\nd\ne";

    // тут опис режиму
    private String content = "C";

    @RequestMapping("/theory")
    public String theory(Model model) {
        model.addAttribute("class", VarietyTests.UNDERCLASSES.name());
        model.addAttribute("content", content);
        model.addAttribute("classorig", VarietyTests.UNDERCLASSES.name().toLowerCase(Locale.ROOT));

        return "theory";
    }

    @RequestMapping("/trainy")
    public String trainy(Model model) {
        model.addAttribute("task1", task1);
        model.addAttribute("task2", task2);
        model.addAttribute("task3", task3);
        model.addAttribute("task4", task4);
        model.addAttribute("task5", task5);
        model.addAttribute("task6", task6);
        model.addAttribute("task7", task7);
        model.addAttribute("task8", task8);



        model.addAttribute("class", "trainy");
        return "underclasses";
    }

}