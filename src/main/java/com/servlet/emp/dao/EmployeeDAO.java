package com.servlet.emp.dao;

import java.util.List;

import com.servlet.emp.dto.Employee;

public interface EmployeeDAO {

	boolean registerEmployee(Employee emp);

	Employee loginEmployee(String email, String password);

	List<Employee> getEmployees();

	boolean deleteEmployee(int eid);

	Employee findEmployeeById(int eid);
	
	boolean EditEmployee(Employee emp);

}
