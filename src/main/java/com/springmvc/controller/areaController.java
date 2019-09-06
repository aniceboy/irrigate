package com.springmvc.controller;

import com.springmvc.entity.Area;
import com.springmvc.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
@RequestMapping("/area")
public class areaController {
    @Autowired
    private AreaService areaService;
    @RequestMapping(value = "/list")
    public String list(Map<String,Object> map){
        map.put("list",areaService.getAll());
        return "area_list";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object>map){
        map.put("area",new Area());
        return "area_add";
    }
    @RequestMapping("/add")
    public String add(Area area){
        areaService.add(area);
        return "redirect:list";
    }
    @RequestMapping("/update")
    public String toUpdate(String an,Map<String,Object>map){
        map.put("area",areaService.get(an));
        return "area_update";
    }
    @RequestMapping(value = "/remove",params = "an")
    public String remove(String an){
        areaService.remove(an);
        return "redirect:list";
    }
}
