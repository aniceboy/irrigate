package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class initialController {

    @RequestMapping("/initial")
    public String goInitial(){
        return "login";
    }
}
