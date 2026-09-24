import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Model {
	private String name ;
	private String userName;
	private String email;
	private String password;
	private Connection connection = null;
	private PreparedStatement statement = null;
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
	
	public int register() {
		int rowsAffected = 0;
		String query = """
							INSERT INTO users (full_name, username, email, password) VALUES (?,?,?,?)
				""";
		try {
			connection= jdbcConnector.getConnection();
			
			statement = connection.prepareStatement(query);

			statement.setString(1, name);
			statement.setString(2, userName);
			statement.setString(3, email);
			statement.setString(4, password);

			rowsAffected = statement.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return rowsAffected;
		
	}
}
