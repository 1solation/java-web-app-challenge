package controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
//		This works as expected, minus the ps.getGeneratedKeys() on line 55. Need to revisit.
//		UPDATE: Keeping code here in case I need to go back to first solution, but commented out for now. 
//		int generatedCustomerID = 0;
		loadDriver(db_driver);
		Connection db_connection = getConnection();
		String sql = "insert into AeroParker.customers (`E-MAIL ADDRESS`,`TITLE`,`FIRST NAME`,`LAST NAME`,"
				+ "`ADDRESS LINE 1`,`ADDRESS LINE 2`,`CITY`,`POSTCODE`,`TELEPHONE NUMBER`)  "
				+ "values (?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = db_connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, customer.getEmail_address());
			ps.setString(2, customer.getTitle());
			ps.setString(3, customer.getFirst_name());
			ps.setString(4, customer.getLast_name());
			ps.setString(5, customer.getAddress_line_1());
			ps.setString(6, customer.getAddress_line_2());
			ps.setString(7, customer.getCity());
			ps.setString(8, customer.getPostcode());
			ps.setString(9, customer.getTel_number());
//			ps.setString(10, customer.getSitename());
//			wrong way to add site name, need to try and add to sites table & some how reference that to update 
//			the customer sites table 
			ps.executeUpdate();
			
			System.out.println("Customer Data entered sucessfully to DB");
			
//			ResultSet rs = ps.getGeneratedKeys();
//			while (rs.next()) {
//				generatedCustomerID = rs.getInt(1);
//			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Insert customer error");
		}
//		return generatedCustomerID;
		return null;
		
	}
	
//	public void insertCustomerSite(int generatedCustomerID, Customer customer) {
//	This doesn't work as expected, need to revisit
//		loadDriver(db_driver);
//		Connection db_connection = getConnection();
//		int siteID = 0;
//		
//		if (customer.getSitename() == "Avalon City") {
//			siteID = 1;
//		} else if (customer.getSitename() == "AceParks"){
//			siteID = 2;
//		}
//		
//		String sql2 = "insert into `AeroParker`.`customer sites` (`SITE_ID` values (?)";
//		
//		try {
//			PreparedStatement ps2 = db_connection.prepareStatement(sql2);
//			
//			ps2.setInt(1, siteID);
//			ps2.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			System.out.println("Insert site error");
//		}		
//	}
}
