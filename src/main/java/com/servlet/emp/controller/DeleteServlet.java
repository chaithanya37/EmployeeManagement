package com.servlet.emp.controller;

import java.io.IOException;
import java.lang.invoke.StringConcatFactory;

import com.servlet.emp.dao.EmployeeDAO;
import com.servlet.emp.dao.EmployeeDAOImp1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Delete")
public class DeleteServlet extends HttpServlet{

	/**
	 * 
	 */
	EmployeeDAO edao=null;
	public DeleteServlet() {
		edao=new EmployeeDAOImp1();
	}
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int empID=Integer.parseInt(req.getParameter("eid"));
		boolean isDeleted=edao.deleteEmployee(empID);
		if(isDeleted)
		{
			resp.sendRedirect("ViewAll");
		}
		
	}
}
