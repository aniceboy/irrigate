package com.springmvc.dao;

import com.springmvc.entity.SensorData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SensorDataMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SensorData record);

    int insertSelective(SensorData record);

    SensorData selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SensorData record);

    List<SensorData> selectAll();

    SensorData selectList(@Param("direction")Integer direction,@Param("springklerId")Integer springklerId,@Param("location") String location);
    List<SensorData> selectNumber(@Param("direction")Integer direction,@Param("springklerId")Integer springklerId,@Param("location") String location);

    List<SensorData> findBytData(@Param("direction")Integer direction,@Param("springklerId")Integer sprringklerId);
    List<SensorData> findByhData(@Param("direction")Integer direction,@Param("springklerId")Integer sprringklerId);


    int updateByPrimaryKey(SensorData record);
}