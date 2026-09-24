import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class jdbcConnector {

	public static Connection  getConnection() { 
		 String url = "jdbc:mysql://localhost:3306/user-registration";
		 String username = "root";
		 String password = "@Wzkejy69ts";
		 
		 Connection connection = null;

		 try {
		    	connection = DriverManager.getConnection(url, username, password);
		    	
		    } catch (SQLException e) { 
		    	System.out.println("Connection error: " + e.getMessage());
		    }
			
		 return connection;
		    
	} 
}
