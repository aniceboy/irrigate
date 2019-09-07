package com.springmvc.service.impl;

import com.springmvc.dao.SensorDataMapper;
import com.springmvc.dao.SpringklerHeadMapper;
import com.springmvc.entity.SpringklerHead;
import com.springmvc.service.SpringklerHeadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SprinklerHeadServiceImpl implements SpringklerHeadService {
    @Autowired
    public SpringklerHeadMapper springklerHeadMapper;

    public void add(SpringklerHead springklerHead) {
        springklerHeadMapper.insert(springklerHead);
    }

    public void edit(SpringklerHead springklerHead) {
        springklerHeadMapper.updateByPrimaryKeySelective(springklerHead);
    }

    public void remove(Integer springklerId) {
        springklerHeadMapper.deleteByPrimaryKey(springklerId);
    }

    public SpringklerHead get(Integer springklerId) {
        return springklerHeadMapper.selectByPrimaryKey(springklerId);
    }

    public List<SpringklerHead> getAll() {
        return springklerHeadMapper.selectAll();
    }
}
