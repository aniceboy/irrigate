package com.springmvc.service;

import com.springmvc.entity.SensorData;

import java.util.List;

public interface SensorDataService {

    void remove(Integer id);
    List<SensorData> getAll();
    List<SensorData> findBytData(Integer direction,Integer springklerId);
    List<SensorData> findByhData(Integer direction,Integer springklerId);
    SensorData sendSonsorData(Integer direction,Integer springklerId,String location);
    List<SensorData> sendSonsorNumber(Integer direction,Integer springklerId,String location);
}
