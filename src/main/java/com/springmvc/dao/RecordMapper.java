package com.springmvc.dao;

import com.springmvc.entity.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Record record);

    int insertSelective(Record record);

    Record selectByPrimaryKey(Integer id);

    List<Record> selectAll(@Param("areaId")String areaId);

    int updateByPrimaryKeySelective(Record record);

    int updateByPrimaryKey(Record record);
}