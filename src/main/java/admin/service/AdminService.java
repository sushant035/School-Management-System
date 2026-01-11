package admin.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import admin.entity.Admin;

public class AdminService {
	private static Connection con;

	private static String url = "jdbc:postgresql://localhost:5432/school?user=postgres&password=123";

	static {
		try {
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(url);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public int save(Admin ad) {
		int res = 0;

		String sql = "INSERT into admin values(?,?,?,?,?,?,?)";

		try {
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setInt(1, ad.getId());
			pstm.setString(2, ad.getUsername());
			pstm.setString(3, ad.getName());
			pstm.setInt(4, ad.getAge());
			pstm.setString(5, ad.getEmail());
			pstm.setString(6, ad.getPassword());
			pstm.setString(7, ad.getConfirmPassword());

			if (ad.getPassword().equals(ad.getConfirmPassword())) {
				res = pstm.executeUpdate();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}
}
