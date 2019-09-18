package com.springmvc.controller;

import com.springmvc.entity.SpringklerHead;
import com.springmvc.service.SpringklerHeadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/springklerHead")
public class springklerHeadController {
    @Autowired
    private SpringklerHeadService springklerHeadService;
    @RequestMapping(value = "/list")
    public String list(Map<String,Object> map){
        map.put("list",springklerHeadService.getAll());
        return "springklerHead_list";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object>map){
        map.put("springklerHead",new SpringklerHead());
        return "springklerHead_add";
    }
    @RequestMapping("/add")
    public String add(SpringklerHead springklerHead){
        springklerHeadService.add(springklerHead);
        return "redirect:list";
    }
    @RequestMapping(value = "/to_update")
    public String toUpdate(Integer springklerId,Map<String,Object>map){
        map.put("springklerHead",springklerHeadService.get(springklerId));
        return "springklerHead_update";
    }
    @RequestMapping("/update")
    public String update(SpringklerHead springklerHead){
        springklerHeadService.edit(springklerHead);
        return "redirect:list";
    }
    @RequestMapping(value = "/remove",params = "springklerId")
    public String remove(Integer springklerId){
        springklerHeadService.remove(springklerId);
        return "redirect:list";
    }
}