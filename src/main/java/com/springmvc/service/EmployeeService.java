package com.springmvc.service;

import com.springmvc.entity.Employee;

import java.util.ArrayList;
import java.util.List;

public interface EmployeeService {
    int insert(Employee record);

    ArrayList<Employee> selectSelective(Employee record);

    Employee login(String en,String password);
    void add(Employee employee);
    void edit(Employee employee);
    void remove(String en);
    Employee get(String en);
    List<Employee>getAll();
    void changePassword(Employee employee);
}
