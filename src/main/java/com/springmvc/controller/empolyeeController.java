package com.springmvc.controller;

import com.springmvc.entity.Employee;
import com.springmvc.service.EmployeeService;
import com.springmvc.util.Encryption;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
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
    @ResponseBody
    @RequestMapping(value = "/login",produces = "application/json;charset=utf-8")
    public String login(String en, String password){
        Employee employee = employeeService.login(en,password);

        String jsonRseult = com.alibaba.fastjson.JSON.toJSONString(employee);
        System.out.println(jsonRseult);

        //return json
        return jsonRseult;
    }
    @ResponseBody
    @RequestMapping(value = "/changePassword",produces = "application/json;charset=utf-8")
    public String chenge(HttpSession session, @RequestParam("en") String en,@RequestParam("password") String password, @RequestParam("newPassword") String new1){
/*      第二种获取android客户端传递值的方式：
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");*/
        Employee record = new Employee();
//        en = "1607094226";
//        password = "000000";
        record.setEn(en);
        record.setPassword(Encryption.MD5(password));
        List<Employee> list = employeeService.selectSelective(record);
        if (list.size() == 0){
            String jsonResult = com.alibaba.fastjson.JSON.toJSONString("密码错误");
            System.out.println(jsonResult);
            return jsonResult;
        }else {
            record.setPassword(Encryption.MD5(new1));
            employeeService.changePassword(record);
            String jsonResult = com.alibaba.fastjson.JSON.toJSONString("修改成功");
            System.out.println(jsonResult);
            return jsonResult;
        }
    }
}
