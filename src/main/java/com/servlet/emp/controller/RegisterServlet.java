package com.servlet.emp.controller;

import java.io.IOException;

import com.servlet.emp.dao.EmployeeDAO;
import com.servlet.emp.dao.EmployeeDAOImp1;
import com.servlet.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{
	
	EmployeeDAO edao=null;
	
	public RegisterServlet() {
		edao=new EmployeeDAOImp1();
	}

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int eid=Integer.parseInt(req.getParameter("empId"));
	String ename=req.getParameter("ename");
	String dept=req.getParameter("dept");
	double sal=Double.parseDouble(req.getParameter("sal"));
	long phone=Long.parseLong(req.getParameter("phone"));
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	
	Employee emp=new Employee(eid, ename, dept, sal, phone, email, password);
	
	
	boolean isRegistered=edao.registerEmployee(emp);
	if(isRegistered) {
		resp.sendRedirect("Login.jsp");
	}
	else {
		resp.sendRedirect("index.jsp");
	}
	
   }
}
