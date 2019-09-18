package com.springmvc.service;

import com.springmvc.entity.Record;

import java.util.List;

public interface RecordService {
    List<Record> getAll(String areaId);
}
