package com.example.flow;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FlowController {

    @GetMapping("/")
    public String main (){

        return "main";
    }

}
