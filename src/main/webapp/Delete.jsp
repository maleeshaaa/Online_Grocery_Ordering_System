<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cancel Order</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<style>
		*{
		margin: 0;
		padding: 0;
		font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
		font-size: 1rem;
	    font-weight: 400;
	    line-height: 1.5;
	}
	
	body{
		display: flex;
		height: 100vh;
		justify-content: center;
		align-items: center;
		padding: 30px;
		background-color: white;
	}
	
	.container{
		margin-top: 420px;
		margin-bottom: 50px;
		max-width: 700px;
		width: 800px;
		background: LightGrey;
		padding: 40px 30px;
		border-radius: 10px;
	}
	
	.container .title{
		margin-top: -20px;
		font-size: 40px;
		font-weight: 500;
		position: relative;
	}
	
	.form-control {
		  display: block;
		  width: 200%;
		  height: calc(2.50rem + 2px);
		  padding: 0.375rem 0.75rem;
		  font-size: 1rem;
		  font-weight: 400;
		  line-height: 2.5;
		  color: #495057;
		  background-color: #fff;
		  background-clip: padding-box;
		  border: 1px solid #ced4da;
		  border-radius: 0.25rem;
		  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
		}
		
	  .button {
		  background-color: DimGray;
		  border: none;
		  color: white;
		  padding: 15px 70px;
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
			
	</style>
</head>
<body>

	<%
		String order_id = request.getParameter("order_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String pcode = request.getParameter("pcode");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");		
	%>

	<div class="container">

		<div class="title">Cancel Order</div><br>
		<form action="Delete" method="post">
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>Order ID</h6>
	            <input type="text" class="form-control" name="order_id" value="<%=order_id%>" readonly>
			    </div>
			</div>
	                
	        <div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>Recipient First Name</h6>
	            <input type="text" class="form-control" name="first_name" value="<%=first_name%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>Recipient Last Name</h6>
	            <input type="text" class="form-control" name="last_name" value="<%=last_name%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>House Number and Street Name</h6>
	            <input type="text" class="form-control" name="street" value="<%=street%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>City</h6>
	            <input type="text" class="form-control" name="city" value="<%=city%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>District</h6>
	            <input type="text" class="form-control" name="district" value="<%=district%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6>Postal Code</h6>
	            <input type="text" class="form-control" name="pcode" value="<%=pcode%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6 >Contact Number</h6>
	            <input type="number" class="form-control" name="phone" value="<%=phone%>" readonly>
			    </div>
			</div>
			
			<div class="form-row">
			    <div class="form-group col-md-6">
			    <h6 >Email</h6>
	            <input type="email" class="form-control"name="email" value="<%=email%>" readonly>
			    </div>
			</div><br>
	                   
			<div class="text-center">
	            <input type="submit" name="name" value="CANCEL MY ORDER" class="button">
            </div>        
       </form>
       </div>

</body>
</html>