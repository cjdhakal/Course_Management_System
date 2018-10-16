<!--<html>  
<body>  
<form action="register" method="post">  
  
Name:<input type="text" name="userName"/><br/><br/>  
Password:<input type="password" name="userPass"/><br/><br/>  
Email Id:<input type="text" name="userEmail"/><br/><br/>  
Country:  
<select name="userCountry">  
<option>India</option>  
<option>Pakistan</option>  
<option>other</option>  
</select>  
  
<br/><br/>  
<input type="submit" value="register"/>  
  
</form>  
</body>  
</html>  -->



<html>
<head>
<title>Registration Page</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet">
<link href="sticky_footer.css" rel="stylesheet">
</head>
<body>
      <header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="/CourseServlet/index.jsp">Virtusa CMS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
           <li class="nav-item active">
              <!-- <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a> -->
            </li>
            <li class="nav-item">
              <!-- <a class="nav-link" href="#">Link</a> -->
            </li>
            <li class="nav-item">
              <!-- <a class="nav-link disabled" href="#">Disabled</a> -->
            </li> 
          </ul> 
              <a style="color:#fff!important" class="nav-link" href="logout">Logout</a>
        </div>
      </nav>
    </header>	
    <div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1>Registration page</h1>
				<form action="register" method="post" id="signup-form"
					onsubmit="return checkSubmit()">
					<div class="form-group">
						<label>Full Name:</label> <input name="fullname" type="text"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Username:</label> <input type="text" name="userName"
							required class="form-control">
					</div>
					<div class="form-group">
						<label>Email address:</label> <input type="email" name="userEmail"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Password:</label> <input type="password" id="userPass"
							name="userPass" required="required" class="form-control">
					</div>
					<div id="password-err-msg"></div>
					<!-- <div class="form-group">
                     <label>Mobile:</label>
                     <input type="tel" id="mobile" class="form-control">
                  </div>-->


					<div class="form-group">
						<label>Confirm Password:</label> <input type="password"
							name="confirmPassword" id="confirm-password" required="required"
							class="form-control">
					</div>
					<div id="confirm-password-err-msg"></div>
					<div class="checkbox">
						<select name="userType">
							<option>Admin</option>
							<option>Student</option>
							<option>other</option>
						</select>
					</div>
					<br>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<a href="index.jsp">Login Page</a>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<span class="text-muted">Copyright &copy; Virtusa Corporation</span>
		</div>
	</footer>
	<script src="script.js"></script>
</body>
</html>