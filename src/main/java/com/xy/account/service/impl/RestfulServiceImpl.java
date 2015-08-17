package com.xy.account.service.impl;

import com.xy.account.dao.EmployeeDao;
import com.xy.account.model.Employee;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xy.account.service.RestfulService;

import java.util.List;

/**
 * @author changwei
 *         <p/>
 *         File: RestfulServiceImpl.java
 *         <p/>
 *         Created: 15/8/4
 */

@Service
@Transactional
public class RestfulServiceImpl implements RestfulService {
    private Logger logger = Logger
            .getLogger(RestfulServiceImpl.class.getName());

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public List<Employee> getEmployeeInfoByName(Employee employee) {
        // TODO Auto-generated method stub
        if (employee != null) {
            return employeeDao.get(employee.getEmployee_name(), employee.getEmployee_id(), employee.getEmployee_department());
        } else {
            return null;
        }
    }

}
