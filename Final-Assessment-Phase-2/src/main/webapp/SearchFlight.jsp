<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SearchFlight</title>

<style>
 body 
  {
		  margin:0;
		  padding:0;
  }
.container{
top:50%;
left:45%;
position: absolute;
transform:translate(-50%,-50%);
}
.card{
padding:10px 10px 10px 10px;
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
margin-left:250px;
margin-right:50px;
}
label {
color: #8FBC8F;
font-weight: bold;
}
</style>
</head>
<br>
<br>
<br>
<br>
<center>	Welcome to FlyAway </center><br>
			<center> 	Search Flight </center><br>
    
    <div class='container'>
    
   					 <div class='card'>
  							 <form action="SearchFlight" method="post">
				  			<label for="date" id='lable'>Date</label>
				          	<input type="date"   id="date" name="date" placeholder="DD-MM-YYYY">
        	       
        
        
          <label for="source" id='lable'>Source</label>
                    <select  id="source" name="source">
                        <option value="India">India</option>
                        <option value="China">China</option>
                        <option value="Australia">Australia</option>
                        <option value="Dubai">Dubai</option>
                        <option value="Russia">Russia</option>
                        <option value="Thailand">Thialand</option>
                        <option value="Singapore">Singapore</option>
                        <option value="Ukraine">Ukraine</option>
                        <option value="Iran">Iran</option>
                        <option value="Israel">Israel</option>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                    </select>
        
        
    
        
        
        
        
           <label for="destination" id='lable'>Destination</label>
                    <select  id="destination" name="destination">
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                        <option value="India">India</option>
                        <option value="Armenia">Armenia</option>
                        <option value="Pakistan">Pakistan</option>
                        <option value="Australia">Australia</option>
                        <option value="Dubai">Dubai</option>
                        <option value="Ukraine">Ukraine</option>
                        <option value="Singapore">Singapore</option>
                        <option value="Israel">Israel</option>
                        
                    </select>
        
     
        
        
       
        
          <label for="persons" id='lable'>No of Persons</label>
                    <select id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
        
        
   
         <button type="submit"  value="Submit" id=Submit>Search Flights</button>
    
    
    
    </form>
    
    </div>
    </div>
    
</body>
</html>