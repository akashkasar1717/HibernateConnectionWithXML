package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Employee;

@Component
@Transactional
public class EmployeeDao {

	@Autowired
	SessionFactory sessionFactory;

	public int save(Employee employee) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int i = (int) session.save(employee);
		tx.commit();
		return i;
	}

	public List<Employee> listsEmp() {
		@SuppressWarnings("unchecked")
		List<Employee> e = sessionFactory.openSession().createCriteria(Employee.class).list();
		return e;
	}

	public Employee getById(int id) {
		Employee e2 = (Employee) sessionFactory.openSession().load(Employee.class, id);
		return e2;
	}

	public void deleteEmp(int id) {
		Employee e2 = (Employee) sessionFactory.getCurrentSession().load(Employee.class, id);
		sessionFactory.getCurrentSession().delete(e2);
	}

	public void update(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
	}

}
