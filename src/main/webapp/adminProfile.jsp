<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String adminName = (String) session.getAttribute("adminName");
String adminId = (String) session.getAttribute("adminId");
String adminUsername = (String) session.getAttribute("adminUsername");
String adminEmail = (String) session.getAttribute("adminEmail");
String adminAge = (String) session.getAttribute("adminAge");

if (adminName == null) {
	response.sendRedirect("index.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>
<style>
body {
	margin: 0;
	font-family: Arial;
	background: linear-gradient(135deg, #0f2027, #2c5364);
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.card {
	width: 420px;
	background: white;
	padding: 30px;
	border-radius: 10px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.row {
	margin-bottom: 12px;
}

.label {
	font-weight: bold;
}

.back {
	margin-top: 20px;
	width: 100%;
	padding: 10px;
	border: none;
	background: #0077b6;
	color: white;
	cursor: pointer;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="card">
		<h2>Admin Profile</h2>

		<div class="row">
			<span class="label">ID:</span>
			<%=adminId%>
		</div>

		<div class="row">
			<span class="label">Username:</span>
			<%=adminUsername%>
		</div>
		
		<div class="row">
			<span class="label">Email-ID:</span>
			<%=adminEmail%>
		</div>

		<div class="row">
			<span class="label">Name:</span>
			<%=adminName%>
		</div>

		<div class="row">
			<span class="label">Age:</span>
			<%=adminAge%>
		</div>

		<form action="home.jsp">
			<input type="submit" value="Back to Home" class="back">
		</form>
	</div>
</body>
</html>