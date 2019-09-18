package com.springmvc.service.impl;

import com.springmvc.dao.EmployeeMapper;
import com.springmvc.entity.Employee;
import com.springmvc.service.EmployeeService;
import com.springmvc.util.Encryption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

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
        if(employee!=null&&employee.getPassword().equals(Encryption.MD5(password))){
            return  employee;
        }
        return null;
    }

    public void add(Employee employee) {
        employee.setPassword(Encryption.MD5("000000"));
        mapper.insert(employee);
    }

    public void edit(Employee employee) {
        mapper.updateByPrimaryKeySelective(employee);
    }

    public void remove(String en) {
        mapper.deleteByPrimaryKey(en);
    }

    public Employee get(String en) {
        return mapper.selectByPrimaryKey(en);
    }

    public List<Employee> getAll() {
        return mapper.selectAll();
    }

    public void changePassword(Employee employee) {
        mapper.updateByPrimaryKeySelective(employee);
    }
}
