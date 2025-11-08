package com.servlet.emp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.servlet.emp.dao.EmployeeDAO;
import com.servlet.emp.dao.EmployeeDAOImp1;
import com.servlet.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	EmployeeDAO edao=null;
	public EditServlet() {
		edao=new EmployeeDAOImp1();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
        int empid = Integer.parseInt(req.getParameter("empid"));
        String ename = req.getParameter("ename");
        String dept = req.getParameter("dept");
        double sal = Double.parseDouble(req.getParameter("sal"));
        long phone = Long.parseLong(req.getParameter("phone"));
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        boolean isUpdated = edao.EditEmployee(new Employee(empid, ename, dept, sal, phone, email, password));

        if (isUpdated) {
            resp.sendRedirect("ViewAll");
        }
        else {
			PrintWriter pt=resp.getWriter();
			pt.print("<h1> ERROR!!!</h1>");
		}
    }

}
