package org.example.controller;

import org.dom4j.rule.Mode;
import org.example.model.Result;
import org.example.model.util.Regime;
import org.example.model.util.VarietyTests;
import org.example.service.ClassesService;
import org.example.service.Task1Service;
import org.example.service.Task2Service;
import org.example.service.Task3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/nets/underclasses")
public class UnderClassesController {

    @Autowired
    private Task1Service task1Service;
    @Autowired
    private Task2Service task2Service;
    @Autowired
    private Task3Service task3Service;
    @Autowired
    private ClassesService classesService;

//    private String ip = "";
//    private String result = "";

    private String task1 = "For a given network IP address A and B determine the number of IP subnets included in this IP subnet, and the number of nodes (IP addresses of nodes) of one subnet.";
    private String task2 = "IP network A must be divided into B identical subnets, each of which uses the maximum number of nodes. Determine the prefix and mask of the subnet, the number of nodes (IP addresses of nodes) in all subnets.";
    private String task3 = "The IP network A must be divided into a subnet that has B nodes in each of them. Determine the prefix and mask of the subnet, the number of subnets, the exact number of nodes (IP addresses of nodes) that are part of one subnet and the total number of nodes (IP addresses of nodes) in all subnets.";
    private String task4 = "The IP network A is divided into subnets using the CIDR method, provided that the CIDR mask is b and the subnet mask is c. Determine the CIDR prefix, subnet prefix and mask, number of IP subnets, number of nodes (node IP addresses) included in one subnet, and total number of nodes (node IP addresses) in all subnets.";
    private String task5 = "The IP network A is divided into subnets, each of which has b nodes. Define the following parameters for the last subnet: the IP address of the subnet, the minimum and maximum IP addresses of the range that can be used to address the nodes; broadcast IP address; subnet prefix and mask.";
    private String task6 = "An IP network is divided into at least a subnet, each of which contains b nodes. Calculate the class of the total (aggregate) IP address of the class network and its prefix.";
    private String task7 = "An IP network is divided into at least a subnet, each of which contains b nodes. Calculate the number of bits allocated for addressing subnets, the number of bits allocated for addressing nodes, the CIDR prefix, and the subnet prefix.";
    private String task8 = "For a given set of subnet IP addresses, calculate the total (aggregate) network address.\na\nb\nc\nd\ne";

    @RequestMapping("/theory")
    public String theory() {
        return "";
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

    @RequestMapping("/trainy/generate")
    public String trainyAction(Model model) {
        Result result = null;
//---------------------------Task 1-----------------------------
        task1Service.Randoms();
        result = task1Service.getResultModel();
        task1 = task1.replace("A", result.getIPaddr());
        task1 = task1.replace("B", result.getMask());
//---------------------------Task 2-----------------------------
        task2Service.Randoms();
        result = task2Service.getResultModel();
        task2 = task2.replace("A", result.getIPaddr());
        task2 = task2.replace("B", Double.toString(result.getKs()));
//---------------------------Task 3-----------------------------
        task3Service.Randoms();
        result = task3Service.getResultModel();
        task3 = task3.replace("A", result.getIPaddr());
        task3 = task3.replace("B", Double.toString(result.getKh()));

        return "redirect:/nets/underclasses/trainy";
    }

    @RequestMapping("/trainy/check")
    public String checkTrainyAnswers(Model model
//                                     @RequestParam(required = false, name = "task1") String task1,
//                                     @RequestParam(required = false, name = "task2") String task2,
//                                     @RequestParam(required = false, name = "task3") String task3,
//                                     @RequestParam(required = false, name = "task4") String task4,
//                                     @RequestParam(required = false, name = "task5") String task5,
//                                     @RequestParam(required = false, name = "task6") String task6,
//                                     @RequestParam(required = false, name = "task7") String task7,
//                                     @RequestParam(required = false, name = "task8") String task8,
//                                     @RequestParam(required = false, name = "task9") String task9,
//                                     @RequestParam(required = false, name = "task10") String task10
    ) {
//        String[] taskArray = {task1, task2, task3, task4, task5, task6, task7, task8, task9, task10};
//        if (ip.isEmpty())
//            return "redirect:/nets/classes/trainy";
//
//        result = classesService.checkAnswers(taskArray);
//        ip = "";

        return "redirect:/nets/underclasses/trainy";
    }



    @RequestMapping("/control")
    public String control(Model model) {
        task1Service.Randoms();
//        if (!ip.equals(""))
//            model.addAttribute("ip", ip);
//        if (!result.equals(""))
//            model.addAttribute("result", result);
//        model.addAttribute("class", "control");

        return "underclasses";
    }

    @RequestMapping("/control/generate")
    public String controlAction(Model model) {
//        Integer count = classesService.getCount(VarietyTests.UNDERCLASSES.name());
//
//        if (count <= 0) {
//            ip = "You have any tries!";
//            return "redirect:/nets/classes/control";
//        }

//        ip = classesService.genIPv4(VarietyTests.CLASSES.name(), true);
//        userDAO.subtractCount(allUseService.getCurrentUser());

        return "redirect:/nets/underclasses/control";
    }

    @RequestMapping("/control/check")
    public String checkControlAnswers(Model model
//                                      @RequestParam(required = false, name = "task1") String task1,
//                                      @RequestParam(required = false, name = "task2") String task2,
//                                      @RequestParam(required = false, name = "task3") String task3,
//                                      @RequestParam(required = false, name = "task4") String task4,
//                                      @RequestParam(required = false, name = "task5") String task5,
//                                      @RequestParam(required = false, name = "task6") String task6,
//                                      @RequestParam(required = false, name = "task7") String task7,
//                                      @RequestParam(required = false, name = "task8") String task8,
//                                      @RequestParam(required = false, name = "task9") String task9,
//                                      @RequestParam(required = false, name = "task10") String task10,
//                                      @RequestParam(required = false, name = "time") Integer time
    ) {
//        String[] taskArray = {task1, task2, task3, task4, task5, task6, task7, task8, task9, task10};
//        result = classesService.checkAnswers(taskArray);
//        String regime = Regime.CONTROL.name();
//        String vareity = VarietyTests.CLASSES.name();
//
//        if (ip.isEmpty())
//            return "redirect:/nets/classes/control";
//
//        if (ip.equals("You have any tries!"))
//            return "redirect:/nets/classes/control";
//
//        classesService.saveTest(result, regime, vareity, time);
//        ip = "";

        return "redirect:/nets/underclasses/control";
    }
}