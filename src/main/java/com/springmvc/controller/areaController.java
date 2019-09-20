package com.springmvc.controller;

import com.springmvc.entity.Area;
import com.springmvc.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/area/admin")
public class areaController {
    @Autowired
    private AreaService areaService;
    @RequestMapping(value = "/list")
    public String list(Map<String,Object> map){
        map.put("list",areaService.getAll());
        System.out.println(areaService.getAll().size());
        return "admin_area_list";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object>map){
        map.put("area",new Area());
        return "admin_area_add";
    }
    @RequestMapping("/add")
    public String add(Area area){
//        System.out.println(area.getLocation());
        areaService.add(area);
        return "redirect:list";
    }
    @RequestMapping(value = "/to_update")
    public String toUpdate(String an,Map<String,Object>map){
        map.put("area",areaService.get(an));
        return "admin_area_update";
    }
    @RequestMapping("/update")
    public String update(Area area){
        areaService.edit(area);
        return "redirect:list";
    }
    @RequestMapping(value = "/remove",params = "an")
    public String remove(String an){
        areaService.remove(an);
        return "redirect:list";
    }
}
