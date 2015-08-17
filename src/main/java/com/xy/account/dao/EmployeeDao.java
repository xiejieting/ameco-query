package com.xy.account.dao;

import com.xy.account.model.Employee;

import java.util.List;

public interface EmployeeDao {

	public List<Employee> get(String name,String id,String department);

}
