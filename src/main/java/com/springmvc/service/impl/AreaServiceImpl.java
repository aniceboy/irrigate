package com.springmvc.service.impl;

import com.springmvc.dao.AreaMapper;
import com.springmvc.entity.Area;
import com.springmvc.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaServiceImpl implements AreaService {
    @Autowired
    private AreaMapper areaMapper;

    public void add(Area area) {
        areaMapper.insert(area);
    }

    public void edit(Area area) {
        areaMapper.updateByPrimaryKey(area);
    }

    public void remove(String an) {
        areaMapper.deleteByPrimaryKey(an);
    }

    public Area get(String an) {
        return areaMapper.selectByPrimaryKey(an);
    }

    public List<Area> getAll() {
        return areaMapper.selectAll();
    }
}
