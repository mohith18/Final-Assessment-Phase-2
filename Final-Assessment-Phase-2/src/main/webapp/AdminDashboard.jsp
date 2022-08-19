<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="com.flyaway.AdminLogin"%>

<%
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3307/";
    String dbName = "flyawaydb";
    String userId = "root";
    String password = "password";
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN DASHBOARD</title>
<style>
#Submit{
border-radius: 10px;
background:dodgerblue;
border-bottom:1px;
color: solid white;
padding: 10px 10px;
margin-top:none;
border:none;
outline:none;
margin-left:1200px;
}
th, td {
  padding: 10px;
  text-align: Center;
  background:rgb(50,50,50);
  color: #8FBC8F;
}
th {
  padding: 10px;
  text-align: Center;
  background:blue;
  color: #8FBC8F;
}
table {
  border: 1px solid black;
  background:rgb(50,50,50);
  color: #8FBC8F;
}
</style>

</head>
<body>

<%
    if (AdminLogin.isLoggedIn) {
%>

<h2 align="center"><b>ADMIN DASHBOARD</b></h2>

<div class="row">
        <div >
            <form method="post" action="${pageContext.request.contextPath}/PasswordChange.jsp">
                <button type="submit"  id='Submit' >Change Password</button>
            </form>&ensp;
        </div>
       
        <div >
            <form method="post" action="${pageContext.request.contextPath}/AdminLogin.jsp">
                <button type="submit"  id='Submit'>Logout</button>
            </form>
        </div>
        <br>
</div>



<section >
    <section >
        <section>
            <table align='center'>
                <thead>
                <tr>
                    <th scope="col">FLIGHT ID</th>
                    <th scope="col">NAME</th>
                    <th scope="col">SOURCE</th>
                    <th scope="col">DESTINATION</th>
                    <th scope="col">DAY</th>
                    <th scope="col">TICKET FARE</th>
                </tr>
                </thead>
                <tbody>
               
                <p align="center"><span><strong> FLIGHT TABLE</strong></span></p>
                <%
                    try{
                        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                        statement=connection.createStatement();
                        String sql ="SELECT * FROM flight";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <tr>
                    <td><%=resultSet.getString("FlightId") %></td>
                    <td><%=resultSet.getString("Name") %></td>
                    <td><%=resultSet.getString("Source") %></td>
                    <td><%=resultSet.getString("Destination") %></td>
                    <td><%=resultSet.getString("Day") %></td>
                    <td><%=resultSet.getString("TicketPrice") %></td>
                </tr>
                
                
                
                
                <%
                            }
                        %>
                        </tbody>
                        </table>
                        <br/>
                        <br/>
                        
                     <center><h1>MASTER  LIST FOR SOURCE - DESTINATION AND ROUTES</h1></center>   
                        
						<br/>
						<br/>                        
                        <table align='center'>
                <thead>
                <tr>
                    
                    
                    <th scope="col">SOURCE</th>
                    <th scope="col">DESTINATION</th>
                    <th scope="col">DAY</th>
                    
                </tr>
                </thead>
                <tbody> 
                 <% 
                 sql ="SELECT Distinct Source,Destination,Day FROM flight";
                 resultSet = statement.executeQuery(sql);
                 while(resultSet.next()){
                 %>
                
                          
                    
                    <td><%=resultSet.getString("Source") %></td>
                    <td><%=resultSet.getString("Destination") %></td>
                    <td><%=resultSet.getString("Day") %></td>
                    
                </tr>
                
              <%
                            }
                        %>
                        </tbody>
                        </table>
                        <br/>
                        <br/>
                        
                     <center><h1>MASTER  LIST FOR AIRWAYS</h1></center>   
                        
						<br/>
						<br/>                        
                        <table align='center'>
                <thead>
                <tr>
                    
                    
                    <th scope="col">AIRWAY</th>
                                       
                </tr>
                </thead>
                <tbody> 
                 <% 
                 sql ="SELECT Distinct Name FROM flight";
                 resultSet = statement.executeQuery(sql);
                 while(resultSet.next()){
                 %>
                
                          
                    
                    <td><%=resultSet.getString("Name") %></td>
                   
                    
                </tr>
                         <%
                 }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                </tbody>
            </table>
        </section>
    </section>
</section>




</body>
</html>