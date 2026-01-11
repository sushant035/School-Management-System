<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Register</title>
<style>
body {
	margin: 0;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #1e3c72, #2a5298);
}

form {
	width: 360px;
	background: #ffffff;
	padding: 25px 30px;
	border-radius: 10px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
	font-size: 22px;
}

label {
	display: block;
	margin-top: 12px;
	font-size: 14px;
	color: #444;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 8px 10px;
	margin-top: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
	outline: none;
	font-size: 14px;
}

input[type="text"]:focus {
	border-color: #2a5298;
}

input[type="submit"] {
	width: 100%;
	margin-top: 20px;
	padding: 10px;
	border: none;
	border-radius: 6px;
	background: #2a5298;
	color: white;
	font-size: 15px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background: #1e3c72;
}
</style>
</head>
<body>
	<form action="adminRegister">
		<h1>Admin Registration</h1>

		<label>ID</label> 
		<input type="text" name="id"> 
		
		<label>USERNAME</label>
		<input type="text" name="username"> 
		
		<label>NAME</label> 
		<input type="text" name="name"> 
		
		<label>AGE</label> 
		<input type="text" name="age">
		
		<label>Email-ID</label> 
		<input type="text" name="email">
		
		<label>PASSWORD</label> 
		<input type="password" name="password"> 
		
		<label>CONFIRM PASSWORD</label>
		<input type="password" name="confirmPassword"> 
		
		<input type="submit" value="REGISTER">
	</form>
</body>
</html>