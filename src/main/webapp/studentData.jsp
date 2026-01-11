<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="student.entity.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Data</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #2193b0, #6dd5ed);
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
	width: 900px;
	background: white;
	padding: 30px;
	border-radius: 10px;
}

h2 {
	text-align: center;
	margin-bottom: 10px;
	color: #333;
}

.sort-box {
	text-align: right;
	margin-bottom: 15px;
}

select {
	padding: 6px;
	border-radius: 5px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th {
	background: #0077b6;
	color: white;
	padding: 10px;
}

td {
	padding: 10px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background: #f1f1f1;
}

button {
	padding: 6px 12px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	color: white;
}

.edit-btn {
	background: #38b000;
}

.delete-btn {
	background: #d00000;
}
</style>

<script>
function sortTable(type) {
    let table = document.getElementById("studentTable");
    let rows = Array.from(table.rows).slice(1);

    rows.sort(function (a, b) {
        let x = a.cells[type].innerText.toLowerCase();
        let y = b.cells[type].innerText.toLowerCase();

        if (!isNaN(x) && !isNaN(y)) {
            return Number(x) - Number(y);
        }
        return x.localeCompare(y);
    });

    rows.forEach(row => table.appendChild(row));
}
</script>

</head>
<body>

	<div class="container">
		<h2>Student List</h2>

		<div class="sort-box">
			Sort by: <select onchange="sortTable(this.value)">
				<option value="">Select</option>
				<option value="0">ID</option>
				<option value="1">Name</option>
				<option value="2">Age</option>
			</select>

		</div>

		<table id="studentTable">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<%
			List<Student> list = (List<Student>) request.getAttribute("students");
			if (list != null) {
				for (Student s : list) {
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getAge()%></td>
				<td>
					<form action="edit.jsp" method="post">
						<input type="hidden" name="id" value="<%=s.getId()%>">
						<button type="submit" class="edit-btn">Edit</button>
					</form>
				</td>
				<td>
					<form action="delete.jsp" method="post">
						<input type="hidden" name="id" value="<%=s.getId()%>">
						<button type="submit" class="delete-btn">Delete</button>
					</form>
				</td>
			</tr>
			<%
			}
			}
			%>

		</table>
	</div>

</body>
</html>
