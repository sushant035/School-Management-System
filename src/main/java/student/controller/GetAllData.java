package student.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import student.entity.Student;
import student.service.Service;

@WebServlet("/getData")
public class GetAllData extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Service service = new Service();
		List<Student> list = service.getAllData();

		req.setAttribute("students", list);

		RequestDispatcher rd = req.getRequestDispatcher("studentData.jsp");
		rd.forward(req, resp);
	}
}
