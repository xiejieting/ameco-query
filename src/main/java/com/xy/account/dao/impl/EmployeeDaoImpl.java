package com.xy.account.dao.impl;

import com.xy.account.dao.EmployeeDao;
import com.xy.account.model.Employee;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	private static Logger logger = Logger.getLogger(EmployeeDaoImpl.class
			.getName());

	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}


	public List<Employee> get(String name,String id,String department) {
		String hql = "from Employee as employees where employees.employee_name like ? and employees.employee_id like ? and employees.employee_department like ? ";
		Query query = getCurrentSession().createQuery(hql);
		query.setString(0, "%"+name+"%");
		query.setString(1,"%"+id+"%");
		query.setString(2,"%"+department+"%");
//		query.setMaxResults(1);
		List<Employee> accList = query.list();
		if (accList != null && accList.size() != 0) {
			return accList;
		}
		return null;
	}

}
