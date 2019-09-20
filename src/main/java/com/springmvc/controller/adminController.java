package com.springmvc.controller;

import com.springmvc.entity.Admin;
import com.springmvc.service.AdminService;
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

@Controller
public class adminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/admin/login",method = RequestMethod.GET)
    public String login(){
        return "admin_login";
    }

    @RequestMapping(value = "/admin/login",method = RequestMethod.POST)
    public  String loginValidate(HttpSession session, Model model, @ModelAttribute Admin admin){
        List<Admin> list = new ArrayList<Admin>();
        Admin record = new Admin();
        record.setAn(admin.getAn());
        list = adminService.selectSelective(record);
        if (list.size() == 0){
            model.addAttribute("status",1);
        }else {
            record.setPassword(Encryption.MD5(admin.getPassword()));
//            System.out.println(record.getAn());
//            System.out.println(record.getPassword());
//            System.out.println(record.getAn());
//            System.out.println(record.getPassword());
            list = adminService.selectSelective(record);
//            System.out.println(list.size());
            if (list.size() == 0){
                model.addAttribute("status",2);
            }else {
                record = list.get(0);
                session.setAttribute("admin",record);
                model.addAttribute("status",0);
            }
        }
        return "admin_login";
    }
    @RequestMapping(value = "/admin/logout", method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }

    @RequestMapping(value = "/admin/adminInfo",method = RequestMethod.GET)
    public String adminInfo(Model model,HttpSession session){
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin != null){
            model.addAttribute("admin",admin);
        }
        return "admin_info";
    }

    @RequestMapping(value = "/admin/change_password",method = RequestMethod.GET)
    public String toChangePassword(){
        return "admin_change_password";
    }

    @RequestMapping(value = "/admin/change_password",method = RequestMethod.POST)
    public String changePassword(HttpSession session, Model model, @ModelAttribute Admin admin, @RequestParam String new1,@RequestParam String new2){
        Admin record = (Admin)session.getAttribute("admin");
        record.setPassword(Encryption.MD5(admin.getPassword()));
//        System.out.println(record.getPassword()+"密码获得");
        List<Admin> list = adminService.selectSelective(record);
//        System.out.println(list.size()+"有密码");
        if (list.size() == 0){
            model.addAttribute("status",0);
        }else {
            if (new1.equals(new2)){
                record.setPassword(Encryption.MD5(new1));
                adminService.changePassword(record);
//                System.out.println(record.getPassword()+"密码修改后");
                model.addAttribute("status",1);
            }else {
                model.addAttribute("status",2);
            }
        }
        return "admin_change_password";
    }

}
