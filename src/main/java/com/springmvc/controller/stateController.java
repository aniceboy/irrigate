package com.springmvc.controller;

import com.springmvc.entity.State;
import com.springmvc.service.StateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class stateController {
    @Autowired
    public StateService stateService;

    @ResponseBody
    @RequestMapping(value = "/sendState",produces = "application/json;charset=utf-8")
    public String sendState(String areaId,Integer springklerSn){
        List<State> list = stateService.getState(areaId,springklerSn);
        String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(list);
        System.out.println(jsonRseult);
        return jsonRseult;
    }
    @ResponseBody
    @RequestMapping(value = "/changeState",produces = "application/json;charset=utf-8")
    public String changeState(String areaId,Integer springklerSn,Integer direction,Integer state2,Integer time){
        System.out.println(areaId+"=="+springklerSn+"=="+direction+"=="+state2+"=="+time);
        State record = new State();
        record.setAreaId(areaId);
        record.setSpringklerSn(springklerSn);
        record.setDirection(direction);
        List<State> list = stateService.selectSelective(record);
        if (list.size() == 0){
            String jsonResult = com.alibaba.fastjson.JSON.toJSONString("不存在此喷头");
            System.out.println(jsonResult);
            return jsonResult;
        }else {
            record.setState2(state2);
            record.setTime(time);
            stateService.changeState(record);
            String jsonResult = com.alibaba.fastjson.JSON.toJSONString(record);
            System.out.println(jsonResult);
            return jsonResult;
        }
    }
}
