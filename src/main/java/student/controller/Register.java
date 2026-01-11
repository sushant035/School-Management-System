package student.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import student.entity.Student;
import student.service.Service;

@WebServlet("/register")
public class Register extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));

		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setAge(age);

		Service service = new Service();
		int res = service.save(student);

		if (res != 0) {
			resp.sendRedirect("home.jsp");
		} else {
			resp.sendRedirect("register.jsp?error=Registration failed. ID may already exist");
		}
	}
}
