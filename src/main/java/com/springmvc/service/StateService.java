package com.springmvc.service;

import com.springmvc.entity.State;

import java.util.ArrayList;
import java.util.List;

public interface StateService {
    List<State> getState(String areaId,Integer springklerSn);
    void changeState(State state);
    List<State> selectSelective(State record);
}
