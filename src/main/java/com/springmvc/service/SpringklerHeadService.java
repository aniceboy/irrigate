package com.springmvc.service;

import com.springmvc.entity.SpringklerHead;

import java.util.List;

public interface SpringklerHeadService {
    void add(SpringklerHead springklerHead);
    void edit(SpringklerHead springklerHead);
    void remove(Integer springklerId);
    SpringklerHead get(Integer springklerId);
    List<SpringklerHead> getAll();
}
