<%@page import="com.servlet.emp.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        background-color: #ffffff;
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        color: #000;
        text-align: center;
    }

    .dashboard {
        margin-top: 120px;
        background:linear-gradient(135deg, #007bff, #00c6ff);
        border: 1px solid #e0e0e0;
        padding: 50px 70px;
        border-radius: 15px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        width: 90%;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .dashboard:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
    }

    h1 {
        font-size: 28px;
        color: #000;
        margin-bottom: 10px;
    }

    .subtitle {
        font-size: 18px;
        font-weight: 400;
        color: #000;
    }
</style>
</head>
<body>

    <%@ include file="Navbar.jsp" %>

    <%
        Employee emp = (Employee)session.getAttribute("employee");
    	if(emp==null)
    	{
    		response.sendRedirect("Login.jsp");
    		return;
    	}
    %>

    <div class="dashboard">
        <h1>Hello, <%= emp.getEname() %> 👋</h1>
        <p class="subtitle">Welcome to your Employee Dashboard</p>
    </div>
</body>
</html>
