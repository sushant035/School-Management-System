<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>School Manager</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #4b79a1, #283e51);
    min-height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
}

.wrapper {
    width: 340px;
}

.card {
    background: rgba(255, 255, 255, 0.18);
    padding: 30px;
    border-radius: 10px;
    backdrop-filter: blur(8px);
    border: 1px solid rgba(255, 255, 255, 0.3);
}

h1 {
    text-align: center;
    color: white;
    font-size: 20px;
    margin-bottom: 20px;
}

label {
    color: white;
    font-size: 14px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 8px;
    margin: 6px 0 14px;
    border-radius: 5px;
    border: none;
    outline: none;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background: #00c6ff;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 15px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background: #0096c7;
}

.error {
    color: yellow;
    text-align: center;
    margin-bottom: 12px;
    font-size: 14px;
}

.register-box {
    margin-top: 15px;
    text-align: center;
}

.register-box span {
    color: white;
    font-size: 13px;
    display: block;
    margin-bottom: 6px;
}

.register-box input {
    background: transparent;
    border: 1px solid #00c6ff;
}
</style>
</head>

<body>

<div class="wrapper">

    <form action="login" method="post" class="card">

        <h1>LOGIN TO YOUR ADMIN ID</h1>

        <%
            String error = request.getParameter("error");
            if (error != null) {
        %>
            <div class="error"><%= error %></div>
        <%
            }
        %>

        <label>User Name</label>
        <input type="text" name="username">

        <label>Password</label>
        <input type="password" name="password">

        <input type="submit" value="LOGIN">

    </form>

    <form action="adminRegister.jsp" class="register-box">
        <span>New Admin?</span>
        <input type="submit" value="REGISTER HERE">
    </form>

</div>

</body>
</html>