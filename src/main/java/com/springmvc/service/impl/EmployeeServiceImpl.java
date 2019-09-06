package com.springmvc.service.impl;

import com.springmvc.dao.EmployeeMapper;
import com.springmvc.entity.Employee;
import com.springmvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Resource
    private EmployeeMapper mapper;

    public int insert(Employee record) {
        return mapper.insert(record);
    }

    public ArrayList<Employee> selectSelective(Employee record) {
        return mapper.selectSelective(record);
    }

    public Employee login(String en, String password) {
        Employee employee = mapper.selectByPrimaryKey(en);
        if(employee!=null&&employee.getPassword().equals(password)){
            return  employee;
        }
        return null;
    }

    public void changePassword(Employee employee) {
        mapper.updateByPrimaryKeySelective(employee);
    }
}
