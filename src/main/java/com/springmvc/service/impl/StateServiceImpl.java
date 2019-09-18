package com.springmvc.service.impl;

import com.springmvc.dao.StateMapper;
import com.springmvc.entity.State;
import com.springmvc.service.StateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StateServiceImpl implements StateService {
    @Autowired
    public StateMapper stateMapper;

    public List<State> getState(String areaId, Integer springklerSn) {
        System.out.println(areaId+"------"+springklerSn);
        return stateMapper.selectState(areaId,springklerSn);
    }

    public void changeState(State state) {
        stateMapper.updateByPrimaryKeySelective(state);
    }

    public List<State> selectSelective(State record) {
        System.out.println(record.getAreaId()+record.getSpringklerSn()+record.getDirection());
        return stateMapper.selectSelective(record);
    }
}
