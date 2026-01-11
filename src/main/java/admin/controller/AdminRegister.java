package admin.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import admin.entity.Admin;
import admin.service.AdminService;

@WebServlet("/adminRegister")
public class AdminRegister extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String username = req.getParameter("username");
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmPassword");

		Admin admin = new Admin();
		admin.setId(id);
		admin.setUsername(username);
		admin.setName(name);
		admin.setAge(age);
		admin.setEmail(email);
		admin.setPassword(password);
		admin.setConfirmPassword(confirmPassword);

		AdminService service = new AdminService();
		int res = service.save(admin);

		if (res != 0) {
			resp.sendRedirect("home.jsp");
		} else {
			resp.sendRedirect("adminRegister.jsp?error=Registration failed. ID may already exists");
		}
	}
}
