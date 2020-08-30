package controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseManager {
	private String db_url = "jdbc:mysql://localhost:3306/AeroParker?useTimezone=true&serverTimezone=UTC";
	private String db_username = "root";
	private String db_password = "password";
	private String db_driver = "com.mysql.cj.jdbc.Driver"; 
	
	public void loadDriver(String db_driver) {
		try {
			Class.forName(db_driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection db_connection = null;
		try {
			db_connection = DriverManager.getConnection(db_url, db_username, db_password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return db_connection;
	}
	public String insert(Customer customer) {
		loadDriver(db_driver);
		Connection db_connection = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into AeroParker.customers (`E-MAIL ADDRESS`,`TITLE`,`FIRST NAME`,`LAST NAME`,`ADDRESS LINE 1`,`ADDRESS LINE 2`,`CITY`,`POSTCODE`,`TELEPHONE NUMBER`)  values (?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = db_connection.prepareStatement(sql);
			ps.setString(1, customer.getEmail_address());
			ps.setString(2, customer.getTitle());
			ps.setString(3, customer.getFirst_name());
			ps.setString(4, customer.getLast_name());
			ps.setString(5, customer.getAddress_line_1());
			ps.setString(6, customer.getAddress_line_2());
			ps.setString(7, customer.getCity());
			ps.setString(8, customer.getPostcode());
			ps.setString(9, customer.getTel_number());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered successfully";
		}
		return null;
		
	}
}
