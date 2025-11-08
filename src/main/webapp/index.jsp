<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
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
        color: #2d3436;
    }

    /* Welcome box styling */
    .welcome-box {
        background: linear-gradient(90deg, #007bff, #00aaff);;
        border: 1px solid #e0e0e0;
        border-radius: 15px;
        padding: 50px 70px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        margin-top: 100px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .welcome-box:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
    }

    h2 {
        font-size: 28px;
        color: black;
        letter-spacing: 1px;
    }

    p {
        margin-top: 10px;
        color: black;
        font-size: 16px;
    }
</style>
</head>

<body>
    <%@ include file="Navbar.jsp" %>

    <div class="welcome-box">
        <h2>WELCOME TO EMPLOYEE MANAGEMENT SYSTEM</h2>
        <p>Manage employee records efficiently and with style!</p>
    </div>
</body>
</html>
