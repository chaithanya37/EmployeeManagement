package com.servlet.emp.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.servlet.emp.dao.EmployeeDAOImp1;
import com.servlet.emp.dto.Employee;

@WebServlet("/EditForm") 
public class EditFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    EmployeeDAOImp1 edao = new EmployeeDAOImp1();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int empid = Integer.parseInt(request.getParameter("eid"));
        Employee emp = edao.findEmployeeById(empid);

        request.setAttribute("emp", emp);
        request.getRequestDispatcher("Edit.jsp").forward(request, response);
    }

}
