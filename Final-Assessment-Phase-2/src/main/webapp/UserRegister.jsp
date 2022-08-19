<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>

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
#name{
border:none;
background:transparent;
border-bottom:1px solid white;
padding: 10px;
margin-bottom:15px;
color:white;
  font-family: "Times New Roman", Times, serif;
  
}
#Submit{
border-radius: 10px;
background:dodgerblue;
border-bottom:1px;
color: solid white;
padding: 10px 20px;
margin-top:15px;
border:none;
outline:none;
margin-left:50px;
}
h3{
color: #8FBC8F;
font-weight: bold;
margin-left :20px;
}
</style>
</head>
<body>
<center>
<h1> Welcome to FlyAway</h1> <br/><br/><br/><br/>

</center>
 <div class='container'>
         		 <div class='card'>
         		 <h3>     User Registration </h3>
					     <form action="UserRegistration" method="post" >
					        
					       <input name="name"  type="text" maxlength=50 id=name placeholder="Name"><br>
					       <input name="email" type="text"  maxlength=100 id=name placeholder="e-mail"><br>
					       <input name="password" type="password" maxlength="20" id=name Placeholder="password"><br>
					      
					  
					        <button type="submit" value="Submit" id=Submit>Sign Up</button>
					     
					     </form>
     
 				</div>
    </div>



</body>
</html>