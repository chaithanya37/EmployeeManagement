<%@page import="com.servlet.emp.dto.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>

<style>
/* ---------- GLOBAL ---------- */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: white;
	margin: 0;
	padding: 0;
	color: #000;
	min-height: 100vh;
}

h2 {
	text-align: center;
	color: black;
	margin-top: 70px;
	letter-spacing: 1px;
}

/* ---------- CONTAINER ---------- */
.table-container {
	width: 85%;
	margin: 40px auto;
	background: linear-gradient(135deg, #007bff, #00c6ff);
	padding: 25px;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
	animation: fadeIn 0.7s ease;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* ---------- SEARCH BAR ---------- */
.search-box {
	text-align: right;
	margin-bottom: 20px;
}

.search-box input {
	padding: 10px;
	width: 250px;
	border-radius: 8px;
	border: 2px solid #ccc;
	transition: 0.3s;
	font-size: 15px;
}

.search-box input:focus {
	border-color: #007bff;
	outline: none;
	box-shadow: 0 0 6px rgba(0, 123, 255, 0.4);
}

/* ---------- TABLE ---------- */
table {
	width: 100%;
	border-collapse: collapse;
	border-radius: 8px;
	overflow: hidden;
	back
}

th, td {
	padding: 14px 16px;
	text-align: center;
}

th {
	background-color: black;
	color: white;
	text-transform: uppercase;
	letter-spacing: 0.05em;
}

tr {
	background-color: white;
}

td {
	background-color: white;
	border-bottom: 1px solid #ddd;
	color: black;
}
a{
	text-decoration: none;
	color:white;
}
button {
	background: black; 
	padding:10px 15px;
	border-radius:10px;
}
</style>

</head>
<body>
	<%@ include file="Navbar.jsp"%>
	
	<%
        Employee e1 = (Employee)session.getAttribute("employee");
    	if(e1==null)
    	{
    		response.sendRedirect("Login.jsp");
    		return;
    	}
    %>

	<h2>Employee Details</h2>

	<div class="table-container">
		<div class="search-box">
			<input type="text" placeholder="Search Employee..."
				onkeyup="searchTable(this.value)">
		</div>

		<%
		List<Employee> empList = (List<Employee>) request.getAttribute("empdata");
		%>

		<table id="employeeTable">
			<tr>
				<th>Employee ID</th>
				<th>Name</th>
				<th>Department</th>
				<th>Salary</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			<%
			for (Employee emp:empList) {
			%>
			<tr>
				<td><%=emp.getEmpId()%></td>
				<td><%=emp.getEname()%></td>
				<td><%=emp.getDept()%></td>
				<td><%=emp.getSal()%></td>
				<td><%=emp.getPhone()%></td>
				<td><%=emp.getEmail()%></td>
				<td>  
				<button><a href="EditForm?eid=<%=emp.getEmpId()%>">Edit</a></button>
				<button><a href="Delete?eid=<%=emp.getEmpId()%>">Delete</a></button>
				</td>
			</tr>
			<%
			}
			%>

		</table>
	</div>

	<!-- ---------- SIMPLE SEARCH SCRIPT ---------- -->
	<script>
    function searchTable(value) {
        const rows = document.querySelectorAll("#employeeTable tr:not(:first-child)");
        rows.forEach(row => {
            const text = row.textContent.toLowerCase();
            row.style.display = text.includes(value.toLowerCase()) ? "" : "none";
        });
    }
</script>

</body>
</html>
