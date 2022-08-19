<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IndexPage</title>

<style>
  body 
  {
		  margin:0;
		  padding:0;
  }
.container{
top:50%;
left:50%;
position: absolute;
transform:translate(-50%,-50%);
}
.card{
padding:60px 40px 50px 40px;
background:rgb(50,50,50);
border-radius:10px;
}
h3{
color: #8FBC8F;
font-weight: bold;
}
p{
color: #8FBC8F;
font-weight: bold;
align:center;	
}
a
{
border-radius:10px;
color: white;
}
</style>

</head>
<body>
<div class='container'> 
<div  class='card'> 
<div > 
          <h3>Welcome to FlyAway !</h3>
          <br>
          <br>
          <h3>  Book Flights With Us in Cheapest Price  </h3>
          <br>
          <br>
           <h3> Sign Up to Book Flight </h3>
          <br>
          <p ><a href="UserRegister.jsp" > Sign Up </a> </p> 
     </div>
     <div>
								       <h3> Are you Registered ? </h3>
								       <h3> Login to Book Flight  </h3>
      <p><a href="ULogin.jsp"> Sign In</a></p>    
     </div>
     <div>
       <h3>  Are you Admin ?</h3>
         <p> <a href="AdminLogin.jsp">Admin Login</a> </p>
     </div>
     
 </div>
 </div>
     
</body>
</html>