package admin.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class AdminLogin extends HttpServlet {

	private static String url = "jdbc:postgresql://localhost:5432/school?user=postgres&password=123";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");
		String password = req.getParameter("password");

		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url);

			String sql = "SELECT * FROM admin WHERE username=? AND password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			HttpSession session = req.getSession();

			if (rs.next()) {
				System.out.println("Login success!!!");
				session.setAttribute("adminId", rs.getString("id"));
				session.setAttribute("adminUsername", rs.getString("username"));
				session.setAttribute("adminName", rs.getString("name"));
				session.setAttribute("adminEmail", rs.getString("email"));
				session.setAttribute("adminAge", rs.getString("age"));

				resp.sendRedirect("home.jsp");
			} else {
				System.out.println("Login failed");
				resp.sendRedirect("index.jsp?error=Invalid ID or password");
			}

			con.close();

		} catch (Exception e) {
			e.printStackTrace();
			resp.sendRedirect("index.jsp?error=Failed to Register. Try again later");
		}
	}
}
