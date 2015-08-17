package com.xy.account.service;

import com.xy.account.model.Employee;

import java.util.List;

/**
 * @author changwei
 *
 *         File: RestfulService.java
 * 
 *         Created: 2015年8月4日 下午2:23:45
 */
public interface RestfulService {
	public List<Employee> getEmployeeInfoByName(Employee employee);
}
