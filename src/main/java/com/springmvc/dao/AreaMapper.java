package com.springmvc.dao;

import com.springmvc.entity.Area;

import java.util.List;

public interface AreaMapper {
    int deleteByPrimaryKey(String an);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(String an);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);

    List<Area>selectAll();
}