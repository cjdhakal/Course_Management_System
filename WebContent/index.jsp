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

<%if(session.getAttribute("u_name")!=null){ RequestDispatcher rd = request.getRequestDispatcher("/courses.jsp");
				rd.forward(request, response); }%>


	<!-- <nav class="navbar navbar-expand-sm bg-light">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="register.jsp">Sign Up</a> </li>
		</ul>

	</nav> -->
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
             <!--  <a style="color:#fff!important" class="nav-link" href="logout">Logout</a> -->
        </div>
      </nav>
    </header>	
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h1>Login Form</h1>
				<form action="login" method="POST">
					<div class="form-group">
						<label>Username:</label> <input type="text" name="userName"
							required="required" class="form-control">
					</div>
					<div class="form-group">
						<label>Password:</label> <input type="password" name="userPass"
							required="required" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<a href="register.jsp">Sign Up</a>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<span class="text-muted">Copyright &copy; virtusa corporation.</span>
		</div>
	</footer>
</body>
</html>
