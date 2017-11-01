package gtja.util;

import java.sql.*;

public class MyUtil {
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1874");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	} 
	
	public static void closeResouce(Connection conn){
		try {
			
			
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public static boolean isEmpty(String str){
		boolean flag = false;
		if(null==str||"".equals(str)){
			flag = true;
		}
		return flag;
	}
}
