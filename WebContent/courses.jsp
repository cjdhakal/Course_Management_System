<html>
<head>
<title>Search Page</title>
<style>
</style>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
  <link href="style.css" rel="stylesheet">
<link href="sticky_footer.css" rel="stylesheet">


<body>

</head>
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

  <!--     <nav class="navbar navbar-expand-sm bg-light">
         <ul class="navbar-nav">
            <li class="nav-item">
               <a class="nav-link" href="register.jsp">Registration</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="logout">Logout</a>
            </li>

            
         </ul>
      </nav> -->
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h1>Search course</h1>
				<br>
				<h3>
				
					Hi
					<%= session.getAttribute("u_name")  %></h3>
				<form action="search" method="POST">
					<label>Search!!</label> <input type="number" name="c_id"
						class="form-control" placeholder="Enter course id">
					<br> <input type="submit">
				</form>
				<a href="allcourses.jsp" type="button" class="btn">All Courses</a>

<!-- <table class="table table-bordered">
    <thead>
      <tr>
        <th>Course Id</th>
        <th>Course Name</th>
        <th>Start Date</th>S
        <th>End Date</th>
        <th>Seats</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Physics</td>
        <td>01/01/2007</td>
        <td>01/01/2018</td>
        <td>11</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Chemistry</td>
        <td>01/01/2007</td>
        <td>01/01/2018</td>
        <td>11</td> 
      <tr>
        <td>3</td>
        <td>Maths</td>
        <td>01/01/2017</td>
        <td>01/01/2018</td>
        <td>11</td>
    </tbody>
  </table> -->


			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<span class="text-muted">Copyright &copy; Virtusa Corporation</span>
		</div>
	</footer>	
</body>
</html>
