package com.springmvc.service;

import com.springmvc.entity.Area;

import java.util.List;

public interface AreaService {
    void add(Area area);
    void edit(Area area);
    void remove(String an);
    Area get(String an);
    List<Area> getAll();
}
