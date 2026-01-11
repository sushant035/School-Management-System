<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #ff416c, #ff4b2b);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

form {
    width: 320px;
    background: rgba(255, 255, 255, 0.2);
    padding: 30px;
    border-radius: 12px;
    backdrop-filter: blur(8px);
}

h1 {
    text-align: center;
    color: white;
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
    border: none;
    border-radius: 6px;
    background: #d00000;
    color: white;
    cursor: pointer;
}
</style>

</head>
<body>

<form action="delete">
    <h1>Delete Student</h1>

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

    <input type="submit" value="Delete">
</form>

</body>
</html>
