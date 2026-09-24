import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ModelLogin {

	private String name ;
	private String userName;
	private String email;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int login() {
		int rowAffected =0;
		String query = """
							SELECT * FROM users WHERE (username = ? OR email = ?) AND password = ? 
				""";
		try(Connection connection= jdbcConnector.getConnection();
			PreparedStatement statement = connection.prepareStatement(query)
			){
			
				statement.setString(1, userName);
				statement.setString(2, userName);
				statement.setString(3, password);
				
				ResultSet result = statement.executeQuery();
				
				if(result.next()) rowAffected = 1;
				
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return rowAffected;
		
	}
}
