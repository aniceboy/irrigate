package com.springmvc.service.impl;

import com.springmvc.dao.SensorDataMapper;
import com.springmvc.entity.SensorData;
import com.springmvc.service.SensorDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SensorDataServiceImpl implements SensorDataService {
    @Autowired
    private SensorDataMapper sensorDataMapper;

    public void remove(Integer id) {
        sensorDataMapper.deleteByPrimaryKey(id);
    }

    public List<SensorData> getAll() {
        return sensorDataMapper.selectAll();
    }

    public SensorData sendSonsorData(Integer direction,Integer springklerId, String location) {
        System.out.println(direction+"/////////////"+springklerId+"///////////"+location);
        SensorData sensorData = sensorDataMapper.selectList(direction,springklerId,location);
        return sensorData;
    }

    public List<SensorData>  sendSonsorNumber(Integer direction, Integer springklerId, String location) {
        System.out.println(direction+"/////////////"+springklerId+"///////////"+location);
//        SensorData sensorData = sensorDataMapper.selectNumber(direction,springklerId,location);
        return sensorDataMapper.selectNumber(direction,springklerId,location);
    }


    public List<SensorData> findBytData(Integer direction,Integer springklerId) {
//        System.out.println(direction+"........."+springklerId);
        return sensorDataMapper.findBytData(direction,springklerId);
    }

    public List<SensorData> findByhData(Integer direction, Integer springklerId) {
        return sensorDataMapper.findByhData(direction,springklerId);
    }
}
