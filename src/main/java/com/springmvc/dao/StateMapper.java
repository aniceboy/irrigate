package com.springmvc.dao;

import com.springmvc.entity.State;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface StateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(State record);

    int insertSelective(State record);

    State selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(State record);

    int updateByPrimaryKey(State record);

    List<State> selectSelective(State record);

    List<State> selectState(@Param("areaId")String areaId,@Param("springklerSn") Integer springklerSn);
}