package com.servlet.emp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.servlet.emp.dao.EmployeeDAOImp1;
import com.servlet.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeDAOImp1 edao = null;

	public LoginServlet() {
		edao = new EmployeeDAOImp1();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Employee emp= edao.loginEmployee(email, password);
		HttpSession session =req.getSession();
		PrintWriter out =resp.getWriter();
		if (emp!=null) {
			session.setAttribute("employee", emp);
			req.getRequestDispatcher("Dashboard.jsp").forward(req, resp);		}

	}
}
