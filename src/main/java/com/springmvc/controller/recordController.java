package com.springmvc.controller;

import com.springmvc.entity.Record;
import com.springmvc.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class recordController {
    @Autowired
    public RecordService recordService;

    @ResponseBody
    @RequestMapping(value = "/sendRecord",produces = "application/json;charset=utf-8")
    public String sendRecord(String areaId){
        List<Record> list = recordService.getAll(areaId);
        String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(list);
        System.out.println(jsonRseult);
        return jsonRseult;
    }
}
