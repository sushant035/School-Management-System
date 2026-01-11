package student.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import student.entity.Student;

public class Service {
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
	
	public int save(Student st) {
		int res = 0;

		String sql = "INSERT into student values(?,?,?)";

		try {
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setInt(1, st.getId());
			pstm.setString(2, st.getName());
			pstm.setInt(3, st.getAge());

			res = pstm.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}
	
	public List<Student> getAllData() {
		List<Student> list = new ArrayList<Student>();
		String sql = "SELECT * from student";
		try {
			PreparedStatement pstm = con.prepareStatement(sql);
			
			ResultSet res = pstm.executeQuery();
			
			while(res.next()) {
				list.add(new Student(res.getInt(1), res.getString(2), res.getInt(3)));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int update(Student st) {
		int res = 0;
		String sql = "UPDATE student SET age=?, name=? where id=?";
		try {
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setInt(1, st.getAge());
			pstm.setString(2, st.getName());
			pstm.setInt(3, st.getId());

			res = pstm.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public int delete(int id) {
		int res = 0;
		String sql = "DELETE from student WHERE id=?";
		try {
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setInt(1, id);
			
			res = pstm.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
}
