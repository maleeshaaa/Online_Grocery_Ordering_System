<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        
        <style>
            h1{
                text-align: left;
            }
            h2{
                text-align: left;
            }
            h3{
                text-align: left;
            }
        </style>
        
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/demo.css">
		<link rel="stylesheet" href="css/nav_footer.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </head>
    <body>
    
    <nav>
		<div class="logo">
			<h1><a href="#"> DMart </a></h1>
		</div>
		<ul>
			<!-- navigation bar -->
				<li><a href="">Home</a></li>
				<li><a href="">Products</a></li>
				<li><a href="">Cart</a></li>
				<li><a href="">Contact Us</a></li>
				<li><a href="" class="active">Checkout</a></li>
			</ul>
	</nav>
    <br><br><br>
        <div class="container">
            <br><h1>Checkout</h1>
            
            <hr>
            
        Returning customer?<a class="login-link" href="login.jsp"> Click here to login.</a>
            
        <form action="Insert" method="POST" >
    		<br><h3>Billing Details</h3>
    		
			  <div class="form-row">
			    <div class="form-group col-md-6">
			    <label for="firstname">First Name</label>
			    <input type="text" class="form-control" name="cus_fname" id="cus_fname" placeholder="First Name" required>
			    </div>
			    <div class="form-group col-md-6">
			     <label for="lastname">Last Name</label>
				 <input type="text" class="form-control" name="cus_lname" id="cus_lname" placeholder="Last Name" required>
				 </div>
			  </div>    
			  
			  <div class="form-row">
			    <div class="form-group col-md-6">
			    <label for="com_name">Company Name (optional)</label>
			    <input type="text" class="form-control" name="txtcus_comname" id="cus_comname" placeholder="Company Name">
			    </div>
			  </div>  
			  
			  <div class="form-row">
			    <div class="form-group col-md-6">
			    <label for="country">Country / Region</label><br>
			    <strong>Sri Lanka</strong>
			    </div>
			  </div> 
			  
		      <div class="form-row">
		        <div class="form-group col-md-6">
		        <label>Street Address</label>
		        <input type="text" class="form-control" name="txtcus_street" id="cus_street" placeholder="House number, Street name and Apartment, Suite, Unit etc" required>
			    </div>
			    <div class="form-group col-md-6">
			    <label for="city">City</label>
			    <input type="text" class="form-control" id="cus_city" placeholder="City" name="txtcus_city" required>
			   </div>
		  	  </div>
		  	  
		  	  <div class="form-row">
		        <div class="form-group col-md-6">
		        <label>District</label>
		        <input type="text" class="form-control" name="txtcus_district" id="cus_district" placeholder="District" required>
			    </div>
			   	<div class="form-group col-md-6">
			    <label for="postal_code">Postal Code</label>
			    <input type="text" class="form-control" id="cus_pcode" placeholder="Postal Code" name="txtcus_pcode" required>
			   </div>
		  	  </div>
		  	  
		  	  <div class="form-row">
		        <div class="form-group col-md-6">
			    <label for="phone">Phone Number (The OTP receiving number for cash on delivery)</label>
			    <input type="text" class="form-control" id="cus_phone" name="txtcus_phone" 
			    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
		        maxlength = "10"  placeholder="Phone Number" pattern="[0-9]{3}[0-9]{7}" required>
			   </div>
			   	<div class="form-group col-md-6">
			    <label for="email">Email Address</label>
			    <input type="email" class="form-control" id="cus_email" placeholder="Email Address" name="txtcus_email" required>
			   </div>
		  	  </div>
		  	  
		  	  <div class="form-row">
			    <div class="form-group col-md-6">
			    <label for="country">Payment Method</label><br>
			    <strong>Cash on delivery</strong>
			    </div>
			    <div class="form-group col-md-6">
       				<label>Order Notes (optional)</label>
					<textarea class="form-control" name ="note" id="cus_note" placeholder="Add a note"></textarea>
    			</div>
			  </div> 
			  
			  <hr>
 
		  	  <div class="form-group">
    			<div class="form-check">
			      <input class="form-check-input" type="checkbox" id="gridCheck" onchange="isChecked(this, 'sub1')">
			      <label class="form-check-label" for="gridCheck">
       				Agree to terms and conditions
			      </label>
			    </div>
			  </div>
	
			  <div class="btn-container">
			  	  <input type="submit" class="btn btn-primary" id="sub2" value="Continue Shopping"/>
				  <input type="submit" class="btn btn-primary" id="sub1" value="Place Order"/><br><br>
			  </div>
		     
		</form>
        </div>
        
        <br>
        
        <footer>
            <div class="footer_container">
                <div class="about_us">
					
					<h5> Jaykay Marketing Services Pvt Ltd.</h5>
				    <h5> No:148, Vauxhall Street, Colombo 2, Sri Lanka.</h5>
				    <br>
				    <p>+94 11 2303500</p>
				    <p>(Daily operating hours 8.00a.m to 8.00p.m)</p>
					<ul class = "pay">
						<li><a href="#"><i class="fa fa-cc-visa" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-amex" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-paypal" aria-hidden="true"></i></a></li>
					</ul>
			</div>		
                <div class="first">
					<h2> Quick Links </h2>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Catalogue and Deals</a></li>
							<li><a href="#">Utility bill payments</a></li>
                            <li><a href="#">Track my order</a></li>
							<li><a href="#">My Account</a></li>
                        </ul>
                </div>
                
				<div class = "final">
					<ul class = "icon">
						<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
					<br><br>
					
				</div>	
		    </div>			
    </footer>
	<div class = "copyright">		
        <p> Copyright © 2022 Jaykay Marketing Services (Pvt) Ltd. All Rights Reserved. </p>
	</div>	
        
    </body>
</html>