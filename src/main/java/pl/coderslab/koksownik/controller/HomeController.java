package pl.coderslab.koksownik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String hello() {
        return "hello";
    }


    @RequestMapping("/hello2")
    @ResponseBody
    public String hello2() {
        return "Hello Springboot 2 !!!";
    }

}
