package com.springmvc.dao;

import com.springmvc.entity.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(String an);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String an);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}