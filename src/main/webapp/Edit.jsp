<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.servlet.emp.dto.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>

    <style>
        /* ---------- GLOBAL STYLING ---------- */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background:#fff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* ---------- CONTAINER ---------- */
        .container {
            width: 400px;
            background:linear-gradient(90deg, #007bff, #00aaff);
            margin: 80px auto;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ---------- HEADING ---------- */
        h2 {
            text-align: center;
            color: #000;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        /* ---------- FORM ---------- */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            color: #000;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        input[type="tel"] {
            padding: 10px 12px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.4);
            transform: scale(1.02);
        }

        input[readonly] {
            background-color: #e9ecef;
            cursor: not-allowed;
        }

        /* ---------- BUTTON ---------- */
        .btn {
            margin-top: 25px;
            padding: 12px;
            background: #000;
            color: white;
            font-weight: bold;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: linear-gradient(90deg, #0056b3, #0090e6);
            transform: translateY(-2px) scale(1.03);
            box-shadow: 0 4px 12px rgba(0, 123, 255, 0.3);
        }

        /* ---------- RESPONSIVE DESIGN ---------- */
        @media (max-width: 480px) {
            .container {
                width: 90%;
                margin: 40px auto;
                padding: 25px 20px;
            }

            h2 {
                font-size: 20px;
            }

            .btn {
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
<%@ include file="Navbar.jsp" %>

    <div class="container">
        <h2>Update Employee</h2>

        <%
            Employee emp=(Employee)request.getAttribute("emp");
        %>

        <form action="EditServlet" method="post">
            <label for="empId">Employee ID</label>
            <input type="text" id="empId" name="empid" value="<%= emp.getEmpId() %>" readonly>

            <label for="name">Name</label>
            <input type="text" id="name" name="ename" value="<%= emp.getEname() %>" required>

            <label for="department">Department</label>
            <input type="text" id="department" name="dept" value="<%= emp.getDept() %>" required>

            <label for="salary">Salary</label>
            <input type="number" id="salary" name="sal" value="<%= emp.getSal() %>" required>

            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" maxlength="10" 
                   value="<%= emp.getPhone() %>" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= emp.getEmail() %>" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" value="<%= emp.getPassword() %>" minlength="6" required>

            <button type="submit" class="btn">Update</button>
        </form>
    </div>

</body>
</html>
