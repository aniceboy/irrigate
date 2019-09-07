package com.springmvc.service;

import com.springmvc.entity.Admin;


import java.util.ArrayList;

public interface AdminService {
    int insert(Admin record);

    ArrayList<Admin> selectSelective(Admin record);

    Admin login(String en, String password);
    void changePassword(Admin admin);
}
