package com.springmvc.dao;

import com.springmvc.entity.Employee;

import java.util.ArrayList;
import java.util.List;

public interface EmployeeMapper {
    int deleteByPrimaryKey(String en);

    int insert(Employee record);

    ArrayList<Employee> selectSelective(Employee record);

    int insertSelective(Employee record);

    List<Employee>selectAll();

    Employee selectByPrimaryKey(String en);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);
}