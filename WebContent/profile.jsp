<%@page import="com.plan.manager.entities.PlanManager"%>
<%@page import="com.plan.manager.dao.UserDao"%>
<%@page import="com.plan.manager.helper.ConnectionProvider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%
	PlanManager user=(PlanManager)session.getAttribute("currentUser");
	if(user==null)
	{
		response.sendRedirect("login.jsp");
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="Css/Style.css"> 

<style>
body {
 background-image: url("images/bg.jpg");
 background-color: #cccccc;
 background-size:cover;
		background-attachment:fixed;
}

</style>
</head>
<body>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Plan Manager</a>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    	<a  href="index.jsp"class="btn btn-outline-success my-2 my-sm-0" style="margin-left:93%;"type="submit">Logout</a>
   </div>
</nav>

<!-- Navbar End -->

<!-- Main Body -->

<div class="container-fluid">
	
	<div class="row">
		<div class="col-md-3 mt-3">
			<div class="card shadow-lg p-3 mb-5 bg-white rounded" style="width: 18rem;">
  				<img class="card-img-top" src="images/Work & Office Illustrations.png" alt="Card image cap">
  				<div class="card-body">
    				<h5 class="card-title">Name : <%=user.getName() %> </h5>
    				
  				</div>
			</div>
		</div>
		
		<div class="col-md-3 mt-3 ">
			<div class="card shadow-lg p-3 mb-5 bg-white rounded" style="width: 18rem;">
  				<img class="card-img-top" src="images/Secure email OTP Authentication and verification method.jpg" alt="Card image cap"  height="190">
  				<div class="card-body">
    				<h5 class="card-title">Email :</h5> <b> <%=user.getEmail() %> </b>
    				
  				</div>
			</div>
		</div>
		
		<div class="col-md-3 mt-3 ">
			<div class="card shadow-lg p-3 mb-5 bg-white rounded" style="width: 18rem;">
  				<img class="card-img-top" src="images/mobile.jpg" alt="Card image cap"  height="190">
  				<div class="card-body">
    				<h5 class="card-title">Mobile : <%=user.getMobile() %></h5>
    				
  				</div>
			</div>
		</div>
		
		<div class="col-md-3 mt-3 ">
			<div class="card shadow-lg p-3 mb-5 bg-white rounded" style="width: 18rem;">
  				<img class="card-img-top" src="images/plan.jpg" alt="Card image cap"  height="190">
  				<div class="card-body">
    				<h5 class="card-title">Plan : <%=user.getPlan() %> </h5>
    				
  				</div>
			</div>
		</div>
		
		
  	</div>
  	
  	<div class="row">
  		<div class="col-md-4 offset-4 mt-5">
  			<button type="button" data-toggle="modal" data-target="#profile-modal" class="btn btn-success btn-lg btn-block" id="edit-profile-button">Edit Profile</button>
  		</div>
  	</div>
			
	
</div>


<!-- Main Body Ends -->

<!-- Profile Edit -->
<div id="profile-edit" style="display : none;">



<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4>Email : <%=user.getEmail() %></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <!-- ##################################### -->
       
  					<!-- Form -->
  						<form action="UpdateServlet" method="post">
  						<div class="form-group">
    						<label for="FullName">Name</label>
    						<input type="text" class="form-control" id="exampleInputEmail1" name="name" aria-describedby="emailHelp" placeholder="Enter Your Name">
    						
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputPassword1">Mobile Number</label>
    						<input type="text" class="form-control" id="exampleInputPassword1" name="mobile" placeholder="Mobile Number">
  						</div>
  						<div class="form-group">
    						<label for="gender">Select Your Plan</label>
    						<br>
    						<input type="radio"  id="plan" name="plan" value="Standard">Standard
    						<input type="radio"  id="plan" name="plan" value="Advance">Advance
    						<input type="radio"  id="plan" name="plan" value="Pro">Pro
  						</div>
  						<div>
  							<input type="hidden" name="email" value=<%=user.getEmail() %>>
  						</div>
  						<div >
  							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  							<button type="submit" class="btn btn-outline-primary">Submit</button>
  							 
        
  						</div>	
						</form>
    				
  				
			
			
			
			
      </div>
      
      </div>
    </div>
  </div>
</div>
</div>

<!-- Profile edit end -->



<!-- Java Script -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<script>
	$(document).ready(function(){
		$('#edit-profile-button').click(function(){
			$("#profile-edit").show();
		})
	});
</script>
</body>
</html>