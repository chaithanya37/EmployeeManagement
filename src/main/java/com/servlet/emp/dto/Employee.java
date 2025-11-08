package com.servlet.emp.dto;

public class Employee {
	
	private int empId;
	private String ename;
	private String dept;
	private double sal;
	private long phone;
	private String email;
	private String password;
	
	public Employee() {
		
	}
	
	
	public Employee(int empId, String ename, String dept, double sal, long phone, String email, String password) {
		
		this.empId = empId;
		this.ename = ename;
		this.dept = dept;
		this.sal = sal;
		this.phone = phone;
		this.email = email;
		this.password = password;
	}
	
	
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public int getEmpId() {
		return empId;
	}
	
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
 
   	
	 
}
