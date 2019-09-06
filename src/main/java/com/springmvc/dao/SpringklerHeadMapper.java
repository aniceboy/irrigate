package com.springmvc.dao;

import com.springmvc.entity.SpringklerHead;

public interface SpringklerHeadMapper {
    int deleteByPrimaryKey(Integer springklerId);

    int insert(SpringklerHead record);

    int insertSelective(SpringklerHead record);

    SpringklerHead selectByPrimaryKey(Integer springklerId);

    int updateByPrimaryKeySelective(SpringklerHead record);

    int updateByPrimaryKey(SpringklerHead record);
}