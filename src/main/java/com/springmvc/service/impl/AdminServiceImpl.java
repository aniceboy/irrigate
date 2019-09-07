package com.springmvc.service.impl;

import com.springmvc.dao.AdminMapper;
import com.springmvc.entity.Admin;
import com.springmvc.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public int insert(Admin record) {
        return adminMapper.insert(record);
    }

    public ArrayList<Admin> selectSelective(Admin record) {
        return adminMapper.selectSelective(record);
    }

    public Admin login(String an, String password) {
        Admin admin = adminMapper.selectByPrimaryKey(an);
        if (admin != null && admin.getPassword().equals(password)){
            return admin;
        }
        return null;
    }

    public void changePassword(Admin admin) {
        adminMapper.updateByPrimaryKeySelective(admin);
    }
}
