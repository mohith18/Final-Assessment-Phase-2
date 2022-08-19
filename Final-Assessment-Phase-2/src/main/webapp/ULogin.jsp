<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserLogin</title>
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
</style>

</head>
<body>
<body>
<br>
<br>
<br>
<br>
<center><h1>Welcome to FlyAway </h1></center><br>
<center> <h1>	User  Login </h1></center><br>
      <div class='container'>
      					
					     <div class='card'>
					     					<br>
									     <form action="UserLogin" method="post">
												     <input name="name" type="text" placeholder=UserName id=name><br>
												      <input name="password" type="password" Placeholder=Password id=name><br>
									        		 <button  type="submit" value="Submit" id=Submit >LogIn</button>
									     </form>
					     </div>
    </div>
</body>
</html>