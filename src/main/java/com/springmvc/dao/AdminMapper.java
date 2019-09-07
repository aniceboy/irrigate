package com.springmvc.dao;

import com.springmvc.entity.Admin;

import java.util.ArrayList;

public interface AdminMapper {
    int deleteByPrimaryKey(String an);

    int insert(Admin record);

    ArrayList<Admin>selectSelective(Admin admin);



    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String an);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}