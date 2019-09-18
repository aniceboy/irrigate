package com.springmvc.service.impl;

import com.springmvc.dao.RecordMapper;
import com.springmvc.entity.Record;
import com.springmvc.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RecordServiceImpl implements RecordService {
    @Autowired
    public RecordMapper recordMapper;

    public List<Record> getAll(String areaId) {
        System.out.println(areaId);
        return recordMapper.selectAll(areaId);
    }
}
