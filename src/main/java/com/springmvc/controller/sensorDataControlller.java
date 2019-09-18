package com.springmvc.controller;

import com.springmvc.entity.SensorData;
import com.springmvc.service.SensorDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sensorData")
public class sensorDataControlller {
   @Autowired
   private SensorDataService sensorDataService;
   @RequestMapping(value = "/list")
   public String list(Map<String,Object> map){
       map.put("list",sensorDataService.getAll());
       return "sensor_list";
   }
   @RequestMapping(value = "remove",params = "id")
   public String remove(Integer id){
       sensorDataService.remove(id);
       return "redirect:list";
   }
   @RequestMapping(value = "/goto_tDataCharts")
   public String gotoCharts(Integer direction,Integer springklerId, Model model){
       model.addAttribute("direction", direction);
       model.addAttribute("springklerId",springklerId);
//       map.put("springklerSId", springklerSId);
       return "tData_charts";
   }
    //折线图数据处理,json发送到服务器
//    @ResponseBody
//    @RequestMapping(value = "stSensorData")
//    public String line_list(HttpServletRequest requestBody){
//        List<SensorData> sensorsInfo =  sensorDataService.(new Sensor());
//        String jsonResult = com.alibaba.fastjson.JSON.toJSONString(sensorsInfo);
////        System.out.println(jsonResult);
//        return jsonResult;

    @ResponseBody
    @RequestMapping(value = "/get_tDataCharts")
    public String getTCharts(Integer direction,Integer springklerId){
       springklerId=1;
//       System.out.println("程序运行");
       List<SensorData> list = sensorDataService.findBytData(direction,springklerId);
       String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(list);
       System.out.println(jsonRseult);
       return jsonRseult;
   }
    @RequestMapping(value = "/goto_hDataCharts")
    public String gotohCharts(Integer direction,Integer springklerId, Model model){
        model.addAttribute("direction", direction);
        model.addAttribute("springklerId",springklerId);
//       map.put("springklerSId", springklerSId);
        return "hData_charts";
    }
    @ResponseBody
    @RequestMapping(value = "/get_hDataCharts")

    public String getHCharts(Integer direction,Integer springklerId){
        springklerId=1;
        List<SensorData> list = sensorDataService.findByhData(direction,springklerId);
        String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(list);
        System.out.println(jsonRseult);
        return jsonRseult;
    }
    @ResponseBody
    @RequestMapping(value = "/sendSensorData",produces = "application/json;charset=utf-8")
    public String sendSensorData(Integer direction,Integer springklerId, String location){
//       direction = 1;
//       springklerId = 1;
//       location = "柏林园";
       SensorData sensorData = sensorDataService.sendSonsorData(direction,springklerId,location);
       String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(sensorData);
       System.out.println(jsonRseult);
       return jsonRseult;
   }
    @ResponseBody
    @RequestMapping(value = "/sendSensorNumber",produces = "application/json;charset=utf-8")
    public String sendSensorNumber(Integer direction,Integer springklerId, String location){
//        direction = 1;
//        springklerId = 1;
//        location = "柏林园";
        List<SensorData> list = sensorDataService.sendSonsorNumber(direction,springklerId,location);
        String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(list);
        System.out.println(jsonRseult);
        return jsonRseult;
    }
}
