package com.servlet.emp.controller;

import java.io.IOException;
import java.util.List;

import com.servlet.emp.dao.EmployeeDAO;
import com.servlet.emp.dao.EmployeeDAOImp1;
import com.servlet.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewAll")
public class ViewServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	EmployeeDAO edao=null;
	public ViewServlet() {
		edao=new EmployeeDAOImp1();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Employee> empList=edao.getEmployees();
		
		if (!empList.isEmpty()) {
			req.setAttribute("empdata", empList);
			req.getRequestDispatcher("ViewAll.jsp").forward(req, resp);
		}
	}
}
