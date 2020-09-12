<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="Css/Style.css"> 
</head>
<body>
<div class="container-fluid">
	<div class="row">
	<!-- Left Section -->
		<div class="col-md-7 bg">
			<img src="images/Devices _ Rafiki Style.png">
		</div>
		
	<!-- Right Section -->
		<div class="col-md-5">
			<!-- Card for Form -->
			<div class="card-property-2">
			<div class="card shadow-lg p-3 mb-5 bg-white rounded" style="width: 30rem;">
			<div class="text-center mt-2">
				<div class="card-title"><h1 class="display-4">Login</h1></div>
			</div>
  				<div class="card-body">
  					<!-- Form -->
  						<form action="LoginServlet" method="post">
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">Email address</label>
    						<input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email" required="required">
    						
  						</div>
  						<div class="form-group">
    						<label for="exampleInputPassword1">Mobile Number</label>
    						<input type="password" class="form-control" id="exampleInputPassword1" name="mobile" placeholder="Mobile Number">
  						</div>
  						
  						<div >
  							<button type="submit" class="btn btn-outline-primary">login</button>
  						</div>	
						</form>
    				
  				</div>
			</div>
		</div>
	</div>
</div>


<!-- Java Script -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="js/myjs.js"></script>


</body>
</html>