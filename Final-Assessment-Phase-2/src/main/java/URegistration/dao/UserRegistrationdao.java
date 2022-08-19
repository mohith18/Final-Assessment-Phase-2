package URegistration.dao;



	
	import java.sql.*;


	public class UserRegistrationdao {
		
		String url ="jdbc:mysql://localhost:3307/flyawaydb";
		String username="root";
		String password="password";
		String sql = "INSERT INTO user(Name,email,Password) VALUES (?,?,?);";
		
		public boolean check(String name, String email, String pass) {
			boolean flag =false;
			
			try {
				
				
				Class.forName("com.mysql.jdbc.Driver");
			    System.out.println("request in Try block of USERDAO");
				Connection con = DriverManager.getConnection(url,username,password);
				System.out.println("connection successful");
				
				PreparedStatement st = con.prepareStatement(sql);
				
				
				st.setString(1,name);
				st.setString(2,email);
				st.setString(3,pass);
				
				
				int rs = st.executeUpdate();
				
				if(rs == 1){
					flag =true;
					return flag;
				}
				
			
				
				
			} catch (Exception e) {
			
				
				e.printStackTrace();
				System.out.println("Passed DAO");
			}
			
			
			return flag;
			
			
			
			
			
		}
		

	}
	
	
