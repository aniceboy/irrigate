package com.springmvc.service;

import com.springmvc.entity.Employee;

import java.util.ArrayList;

public interface EmployeeService {
    int insert(Employee record);

    ArrayList<Employee> selectSelective(Employee record);

    Employee login(String en,String password);
    void changePassword(Employee employee);
}
