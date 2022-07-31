<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/nav_footer.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        
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
            
            .button{
				  background-color: DimGray;
				  border: none;
				  color: white;
				  padding: 10px 60px;
				  text-align: center;
				  text-decoration: none;
				  display: inline-block;
				  font-size: 18px;
				  margin-bottom: 5px;
				  margin: 4px 2px;
				  cursor: pointer;
				  -webkit-transition-duration: 0.4s; /* Safari */
				  transition-duration: 0.4s;
				  border-radius: 0.45rem;
			}
				
			.button:hover {
				  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
			}
			
			.form-control {
				  display: block;
				  width: 200%;
				  height: calc(2.50rem + 2px);
				  padding: 0.375rem 0.75rem;
				  font-size: 1rem;
				  font-weight: 400;
				  line-height: 2.5;
				  color: DarkGray;
				  background-color: Gainsboro;
				  background-clip: padding-box;
				  border: 1px solid #ced4da;
				  border-radius: 0.25rem;
				  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
				}
				
			.container{
				margin-top: 20px;
				margin-bottom: 50px;
				max-width: 700px;
				width: 600px;
				background: LightGrey;
				padding: 40px 30px;
				border-radius: 10px;
			}
       
        </style>

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
				<li><a href="" class="active">Sign Up</a></li>
			</ul>
	</nav>
		<br><br><br><br>
        <div class="container">
            
        <form action="loginServlet"  method="POST" >
    		<h2>Sign Up</h2>
           
			  <div class="form-row">
			    <div class="form-group col-md-6">
			    <label for="firstname">Username</label>
			    <input type="text" class="form-control" name="cus_uname" id="cus_uname" placeholder="Enter your username" required>
			    </div>
			  </div>   
			  
			  <div class="form-row">
			    <div class="form-group col-md-6">
			     <label for="lastname">Password</label>
				 <input type="password" class="form-control" name="cus_pwd" id="cus_pwd" placeholder="Enter your password" required>
				 </div>
			  </div>  
			  
		  	  <div class="form-group">
    			<div class="form-check">
			      <input class="form-check-input" type="checkbox" id="gridCheck" onchange="isChecked(this, 'sub3')">
			      <label class="form-check-label" for="gridCheck">
       				Remember me
			      </label>
			    </div>
			  </div>
	
			  <div class="btn-container">
			  	  <input type="submit" class="button" id="sub3" value="Login"/>
			  </div>
		     
		</form>
        </div>
        
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