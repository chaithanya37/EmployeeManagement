<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Login</title>

<style>
    /* ---------- GLOBAL STYLING ---------- */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {

        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        color:#000;
    }

    /* ---------- LOGIN CONTAINER ---------- */
    .login-container {
        width: 380px;
        background: linear-gradient(135deg, #007bff, #00c6ff);
        backdrop-filter: blur(12px);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        padding: 40px 45px;
        text-align: center;
        margin-top: 120px;
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    h2 {
        color: #000;
        margin-bottom: 25px;
        font-weight: 600;
        letter-spacing: 1px;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: stretch;
    }

    label {
        text-align: left;
        font-weight: 500;
        color: black;
        margin-top: 10px;
    }

    input[type="text"],
    input[type="password"] {
        padding: 12px;
        margin-top: 6px;
        border-radius: 10px;
        border: none;
        outline: none;
        background: white;
        color: #000;
        font-size: 15px;
        transition: all 0.3s ease;
    }

    input::placeholder {
        color: black;
    }

    input:focus {
        background: rgba(255, 255, 255, 0.35);
        box-shadow: 0 0 8px rgba(255, 255, 255, 0.5);
        transform: scale(1.02);
    }

    button {
        margin-top: 25px;
        padding: 12px;
        background: black;
        color: white;
        font-weight: bold;
        font-size: 16px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    button:hover {
        background: linear-gradient(90deg, #0056b3, #0090e6);
        transform: translateY(-2px) scale(1.03);
        box-shadow: 0 4px 15px rgba(0, 123, 255, 0.4);
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 480px) {
        .login-container {
            width: 90%;
            margin-top: 100px;
            padding: 30px 25px;
        }

        h2 {
            font-size: 20px;
        }

        button {
            font-size: 15px;
        }
    }
</style>
</head>

<body>
    <%@ include file="Navbar.jsp" %>

    <div class="login-container">
        <h2>Employee Login</h2>
        <form action="login" method="post">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>

    </div>
</body>
</html>
