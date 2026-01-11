<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String admin = (String) session.getAttribute("adminName");
if (admin == null) {
	response.sendRedirect("index.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #1f4037, #99f2c8);
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* Card */
.container {
	width: 400px;
	background: rgba(255, 255, 255, 0.2);
	padding: 40px;
	border-radius: 12px;
	backdrop-filter: blur(8px);
	text-align: center;
	position: relative;
}

/* Profile icon inside card */
.profile-box {
	position: absolute;
	top: 20px;
	right: 20px;
}

.profile-btn {
	width: 42px;
	height: 42px;
	border-radius: 50%;
	border: none;
	background: white;
	color: #0077b6;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
}

.profile-btn:hover {
	background: #e0e0e0;
}

h2 {
	color: white;
	margin-bottom: 8px;
}

h3 {
	color: #f1f1f1;
	margin-bottom: 30px;
	font-size: 16px;
}

form {
	margin-bottom: 15px;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	font-size: 15px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	background: #0077b6;
	color: white;
}

input[type="submit"]:hover {
	background: #023e8a;
}

input[type="submit"].logout {
	margin-top: 20px;
	width: 20%;
	padding: 12px;
	font-size: 14px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	background: #0077b6;
	color: white;
	background-color: #d00000;
	color: light-grey;
}

input[type="submit"].logout:hover {
	background-color: #9d0208;
}
}
</style>
</head>

<body>

	<div class="container">

		<div class="profile-box">
			<form action="adminProfile.jsp">
				<input type="submit"
					value="<%=admin.substring(0, 1).toUpperCase()%>"
					class="profile-btn" title="Admin Profile">
			</form>
		</div>

		<h2>WELCOME TO DAV RAJRAPPA</h2>
		<h3>
			Logged in as:
			<%=admin%></h3>

		<form action="register.jsp">
			<input type="submit" value="Add Student Data">
		</form>

		<form action="getData">
			<input type="submit" value="Get All Students Data">
		</form>

		<form action="logout" method="get">
			<input type="submit" value="LOGOUT" class="logout">
		</form>

	</div>

</body>
</html>
