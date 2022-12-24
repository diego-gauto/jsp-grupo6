package ar.com.cac22550.factories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conectionFactory {
	private static  final String SERVER = "jdbc:mysql://localhost:3306";
	private static  final String BASE = "grupo6";
	private static  final String USER = "root";
	private static  final String PASSWORD = "v06n06c09";
	
	public static Connection getConexion() throws SQLException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		var conectionString = SERVER+"/"+BASE;
		return DriverManager.getConnection(conectionString,USER,PASSWORD);
	}
}
