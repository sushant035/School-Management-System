package student.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import student.entity.Student;
import student.service.Service;

@WebServlet("/delete")
public class Delete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));

		Service service = new Service();
		int res = service.delete(id);

		if (res != 0) {
			resp.sendRedirect("home.jsp");
		} else {
			resp.sendRedirect("delete.jsp?error=Delete failed. Invalid ID");
		}
	}
}
