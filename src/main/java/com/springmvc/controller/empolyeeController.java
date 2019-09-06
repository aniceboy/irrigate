package com.springmvc.controller;

import com.springmvc.entity.Employee;
import com.springmvc.service.EmployeeService;
import com.springmvc.util.Encryption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class empolyeeController {
    @Autowired
    private EmployeeService employeeService;



    @RequestMapping(value = "/employee/login",method = RequestMethod.GET)
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/emloyee/login",method = RequestMethod.POST)
    public  String loginValidate(HttpSession session,Model model,@ModelAttribute Employee employee){
        List<Employee> list = new ArrayList<Employee>();
        Employee record = new Employee();
        record.setEn(employee.getEn());
        list = employeeService.selectSelective(record);
        if (list.size() == 0){
            model.addAttribute("status",1);
        }else {
            record.setPassword(Encryption.MD5(employee.getPassword()));
            if (list.size() == 0){
                model.addAttribute("status",2);
            }
            record = list.get(0);
            session.setAttribute("employee",record);
            model.addAttribute("status",0);
        }
        return "login";
    }
    @RequestMapping(value = "/employee/logout", method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }

    @RequestMapping(value = "/employee/employeeInfo",method = RequestMethod.GET)
    public String employeeInfo(Model model,HttpSession session){
        Employee employee = (Employee)session.getAttribute("employee");
        if (employee != null){
            model.addAttribute("employee",employee);
        }
        return "employeeInfo";
    }

}
