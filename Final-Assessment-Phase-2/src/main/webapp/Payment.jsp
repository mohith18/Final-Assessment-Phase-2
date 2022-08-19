<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Booking" %>
<%@ page import="com.model.Search" %>

<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");
    if (Booking.passenger_name.equals("")
            || Booking.passenger_email.equals("")
            || Booking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Details</title>

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
margin-left:100px;
}
label {
color: #8FBC8F;
font-weight: bold;
}
p{
color:#8FBC8F;
font-weight: bold;
}
</style>

</head>
<body>

    <section >
        <section >
            <div class="row">
                <div class="col">
                    <h1 align="center" ><b>Checkout</b></h1>
                    <p align="center" ><span><strong>Enter Payment Details</strong></span></p><br>
                </div>
            </div>
            
            
           <section>
           
           <div class='container'>
           
            <div class='card'>
               <form action="${pageContext.request.contextPath}/ThankYou.jsp" method="post" class="form-container">
                   <div >
                       <label for="card_details" id='label'>UPI Id</label>
                       <input type="text" name="name_on_card" placeholder="Enter UPI Id" id='name'>
                   </div>
                   <div >
                       <label for="card_details" id='label'>Card Number/Mobile Number</label>
                       <input type="number" name="card_details" placeholder="Enter Mobile Number" id='name'>
                   </div>
                   <br>
                   <p align="left"><span><strong>Total Amount<br> <%=Booking.ticket_price%> X <%=Search.persons%> persons = Rs.<%=Booking.ticket_price*Search.persons%></strong></span></p>
                   <button type="submit" value="Submit" id='Submit'>Pay Through UPI</button>
               </form>
               
               </div>
               </div>
          </section>
        </section>
    </section>
  

</body>
</html>
<%
    }
%>