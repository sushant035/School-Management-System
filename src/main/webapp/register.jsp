<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

form {
    width: 360px;
    background: rgba(255, 255, 255, 0.2);
    padding: 30px;
    border-radius: 12px;
    backdrop-filter: blur(8px);
}

h1 {
    text-align: center;
    color: white;
    margin-bottom: 15px;
}

.error {
    color: yellow;
    text-align: center;
    margin-bottom: 15px;
    font-size: 14px;
}

label {
    color: white;
    font-size: 14px;
}

input[type="text"] {
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
    font-size: 15px;
    border: none;
    border-radius: 6px;
    background: #00b4d8;
    color: white;
    cursor: pointer;
}

input[type="submit"]:hover {
    background: #0096c7;
}
</style>

</head>
<body>

<form action="register">
    <h1>Student Registration</h1>

    <%
        String error = request.getParameter("error");
        if (error != null) {
    %>
        <div class="error"><%= error %></div>
    <%
        }
    %>

    <label>User ID</label>
    <input type="text" name="id">

    <label>Name</label>
    <input type="text" name="name">

    <label>Age</label>
    <input type="text" name="age">

    <input type="submit" value="REGISTER">
</form>

</body>
</html>
