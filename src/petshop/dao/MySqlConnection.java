package petshop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnection {
	
	public Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql//localhost:3306/petshop", "root", "12123232"); 
		} catch (Exception e) {
			System.out.println(e);
		}
			return con;
	}
}
	   
