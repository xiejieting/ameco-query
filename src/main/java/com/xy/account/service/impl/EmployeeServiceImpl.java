package com.xy.account.service.impl;

import com.xy.account.dao.EmployeeDao;
import com.xy.account.model.Employee;
import com.xy.account.model.ErrDTO;
import com.xy.account.service.EmployeeService;
import com.xy.util.ErrorCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public List<Employee> getUserInfo(Employee employee) {
        return employeeDao.get(employee.getEmployee_name(), employee.getEmployee_id(), employee.getEmployee_department());
    }
}
