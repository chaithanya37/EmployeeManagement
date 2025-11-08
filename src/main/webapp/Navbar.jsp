<%@page import="com.servlet.emp.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Bar</title>

<style>
    /* ---------- GLOBAL NAVBAR STYLING ---------- */
    body {
        margin: 0;
        font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    nav {
        width: 100%;
        position: fixed;
        top: 0;
        left: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 15px 0;
        background:linear-gradient(90deg, #007bff, #00aaff);
        backdrop-filter: blur(12px);
        box-shadow: 0 4px 25px rgba(0, 0, 0, 0.15);
        z-index: 1000;
        border-bottom: 1px solid rgba(255, 255, 255, 0.25);
    }

    nav a {
        color: black;
        text-decoration: none;
        margin: 0 25px;
        font-size: 17px;
        font-weight: 500;
        letter-spacing: 0.5px;
        transition: all 0.3s ease;
        position: relative;
    }

    /* ---------- Underline Hover Effect ---------- */
    nav a::after {
        content: '';
        position: absolute;
        width: 0;
        height: 2px;
        background: #ffffff;
        left: 0;
        bottom: -4px;
        transition: width 0.3s ease;
        border-radius: 2px;
    }

    nav a:hover::after {
        width: 100%;
    }

    /* ---------- Hover Glow ---------- */
    nav a:hover {
        color: #ffeaa7;
        transform: scale(1.1);
        text-shadow: 0 0 10px rgba(255, 255, 255, 0.6);
    }

    /* ---------- Active Link ---------- */
    .active {
        font-weight: bold;
        border-bottom: 2px solid #fff;
    }

    /* ---------- Responsive Design ---------- */
    @media (max-width: 700px) {
        nav {
            flex-direction: column;
            padding: 10px 0;
        }

        nav a {
            margin: 8px 0;
            font-size: 16px;
        }
    }
</style>
</head>
<body>
<% Employee e = (Employee)session.getAttribute("employee");%>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="Register.jsp">Register</a>
        <a href="Login.jsp">Login</a>
        <a href="Dashboard.jsp">Dashboard</a>
        <a href="ViewAll">View Employees</a>
        <% if(e!=null){%>
        <a href="logout">Logout</a>
        <%} %>
    </nav>
</body>
</html>
