<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Summery</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
    
    strong{
    	font-size: 17px;
    	color: DarkSlateGrey;
    }
    
    body{
		display: flex;
		height: 100vh;
		justify-content: center;
		align-items: center;
		padding: 30px;
		background-color: white;
	}
    .table td {
		 text-align: Left;
		 border:5px solid white;
	} 
	
	.table {
		 width: 85%;
		 margin-bottom: 1rem;
		 color: #000000;
	     background-color: LightGray;
	     border-color: #dee2e6;
		}

	.button-grp{
		width: 20%;
		background-color: white;
		padding: 0px;
		align-items: right;
		margin-left: 20px;
	}	
	
	.button {
		  background-color: DarkGrey;
		  border: none;
		  color: white;
		  padding: 15px 68px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 18px;
		  margin-bottom: 5px;
		  margin: 4px 2px;
		  cursor: pointer;
		  -webkit-transition-duration: 0.4s; /* Safari */
		  transition-duration: 0.4s;
	}
	
	.button1 {
		  background-color: DarkGrey;
		  border: none;
		  color: white;
		  padding: 15px 67px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 18px;
		  margin-bottom: 5px;
		  margin: 4px 2px;
		  cursor: pointer;
		  -webkit-transition-duration: 0.4s; /* Safari */
		  transition-duration: 0.4s;
	}
	
	.button2 {
		  background-color: DimGray;
		  border: none;
		  color: white;
		  padding: 15px 102.5px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 18px;
		  margin-bottom: 5px;
		  margin: 4px 2px;
		  cursor: pointer;
		  -webkit-transition-duration: 0.4s; /* Safari */
		  transition-duration: 0.4s;
	}
	
	.button3 {
		  background-color: DimGray;
		  border: none;
		  color: white;
		  padding: 15px 91.18px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 18px;
		  margin-bottom: 5px;
		  margin: 4px 2px;
		  cursor: pointer;
		  -webkit-transition-duration: 0.4s; /* Safari */
		  transition-duration: 0.4s;
	}
		
	.button:hover {
		  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	}
	
	.button1:hover {
		  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	}
	
	.button2:hover {
		  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	}
	
	.button3:hover {
		  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	}

}
	
	</style>
</head>
<body>
	
	<table border="1" class="table table-dark" class="b">

<%--
	<c:forEach var = "res" items = "${RecDetails}">
	
	<c:set var = "orderID" value = "${res.order_id}"/>
	<c:set var = "username" value = "${res.username}"/>
	<c:set var = "firstName" value = "${res.first_name}"/>
	<c:set var = "lastName" value = "${res.last_name}"/>
	<c:set var = "streetAddress" value = "${res.street_address}"/>
	<c:set var = "city" value = "${res.city}"/>
	<c:set var = "district" value = "${res.district}"/> 
	<c:set var = "pcode" value = "${res.pcode}"/>
	<c:set var = "phone" value = "${res.phone}"/>
	<c:set var = "email" value = "${res.email}"/> 
	
--%>

	<tr>
		<td><h3><b>Order ID</b></h3></td>
		<td><h3>#${order_id}</h3></td>
	</tr>
	<tr>
		<td><strong>Recipient First Name</strong></td>
		<td>${first_name}</td>
	</tr>
	<tr>
		<td><strong>Recipient Last Name</strong></td>
		<td>${last_name}</td>
	</tr>
	<tr>
		<td><strong>House Number and Street Name</strong></td>
		<td>${street}</td>
	</tr>
	<tr>
		<td><strong>City</strong></td>
		<td>${city}</td>
	</tr>
	<tr>
		<td><strong>District</strong></td>
		<td>${district}</td>
	</tr>
	<tr>
		<td><strong>Postal Code</strong></td>
		<td>${pcode}</td>
	</tr>
	<tr>
		<td><strong>Country</strong></td>
		<td>Sri Lanka</td>
	</tr>
	<tr>
		<td><strong>Contact Number</strong></td>
		<td>${phone}</td>
	</tr>
	<tr>
		<td><strong>Email</strong></td>
		<td>${email}</td>
	</tr>
	<tr>
		<td><strong>Payment Method</strong></td>
		<td>Cash on delivery</td>
	</tr>
<%-- 
	</c:forEach> --%>
	</table>
	
	<br>
	
	<c:url value="Update.jsp" var="UpdateRecipient">
	
		<c:param name = "order_id" value = "${order_id}"/>
		<c:param name = "first_name" value = "${first_name}"/>
		<c:param name = "last_name" value = "${last_name}"/>
		<c:param name = "street" value = "${street}"/>
		<c:param name = "city" value = "${city}"/>
		<c:param name = "district" value = "${district}"/>
		<c:param name = "pcode" value = "${pcode}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "email" value = "${email}"/>
		
	</c:url>
	
	<c:url value="Delete.jsp" var="DeleteRecipient">
	
		<c:param name = "order_id" value = "${order_id}"/>
		<c:param name = "first_name" value = "${first_name}"/>
		<c:param name = "last_name" value = "${last_name}"/>
		<c:param name = "street" value = "${street}"/>
		<c:param name = "city" value = "${city}"/>
		<c:param name = "district" value = "${district}"/>
		<c:param name = "pcode" value = "${pcode}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "email" value = "${email}"/>

	</c:url>
	
	<div class="button-grp">
	
		<a href="#">
			<input type="button" class="button3" name="home" value="GO TO HOME">
		</a>
		
		<br><br>
	
		<a href="${UpdateRecipient}">
			<input type="button" class="button" name="update" value="UPDATE MY ORDER">
		</a>
		
		<br><br>
		
		<a href="${DeleteRecipient}">
			<input type="button" class="button1" name="delete" value="CANCEL MY ORDER">
		</a>
		<br><br>
		
		<a href="checkout.jsp">
			<input type="button" class="button2" name="delete" value="CONTINUE">
		</a>
	
	</div>

</body>
</html>