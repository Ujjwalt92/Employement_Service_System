package project_op;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	

public static Connection getCon() {
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employedata","root","8685");
			return con;
			
			
		} catch (Exception e) {
					System.out.println(e);
					return null;
		}
		}
	
	
}
