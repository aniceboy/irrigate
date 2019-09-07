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
        return "employee_login";
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
//            System.out.println(record.getEn());
//            System.out.println(record.getPassword());
            list = employeeService.selectSelective(record);
//            System.out.println(list.size());
            if (list.size() == 0){
                model.addAttribute("status",2);
            }else {
                record = list.get(0);
                session.setAttribute("employee",record);
                model.addAttribute("status",0);
            }
        }
        return "employee_login";
    }
    @RequestMapping(value = "/employee/logout", method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.invalidate();
        return "initial";
    }

    @RequestMapping(value = "/employee/employeeInfo",method = RequestMethod.GET)
    public String employeeInfo(Model model,HttpSession session){
        Employee employee = (Employee)session.getAttribute("employee");
        if (employee != null){
            model.addAttribute("employee",employee);
        }
        return "employeeInfo";
    }
    @RequestMapping(value = "/employee/change_password",method = RequestMethod.GET)
    public String toChangePassword(){
        return "employee_change_password";
    }

    @RequestMapping(value = "/employee/change_password",method = RequestMethod.POST)
    public String changePassword(HttpSession session, Model model, @ModelAttribute Employee employee, @RequestParam String new1, @RequestParam String new2){
        Employee record = (Employee) session.getAttribute("employee");
        record.setPassword(Encryption.MD5(employee.getPassword()));
//        System.out.println(record.getPassword()+"密码获得");
        List<Employee> list = employeeService.selectSelective(record);
//        System.out.println(list.size()+"有密码");
        if (list.size() == 0){
            model.addAttribute("status",2);
        }else {
            if (new1.equals(new2)){
                record.setPassword(Encryption.MD5(new1));
                employeeService.changePassword(record);
                model.addAttribute("status",1);
            }else {
                model.addAttribute("status",0);
            }
        }
        return "employee_change_password";
    }

    //员工列表
    @RequestMapping(value = "/employee/list")
    public String list(Map<String,Object> map){
        map.put("list",employeeService.getAll());
        return "employee_list";
    }
    @RequestMapping("/employee/to_add")
    public String toAdd(Map<String,Object>map){
        map.put("employee",new Employee());
        return "employee_add";
    }
    @RequestMapping("/employee/add")
    public String add(Employee employee){
        employeeService.add(employee);
        return "redirect:/employee/list";
    }
    @RequestMapping("/employee/to_update")
    public String toUpdate(String en,Map<String,Object>map){
        map.put("employee",employeeService.get(en));
        return "employee_update";
    }
    @RequestMapping("/employee/update")
    public String update(Employee employee){
        employeeService.edit(employee);
        return "redirect:/employee/list";
    }
    @RequestMapping(value = "/employee/remove",params = "en")
    public String remove(String en){
        employeeService.remove(en);
        return "redirect:/employee/list";
    }
}
