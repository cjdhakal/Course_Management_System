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
</head>
<body>
 <!--      <nav class="navbar navbar-expand-sm bg-light">
         <ul class="navbar-nav">
            <li class="nav-item">
               <a class="nav-link" href="register.jsp">Registration</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="logout">Logout</a>
            </li>

            
         </ul>
      </nav>-->
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
			<div class="col-md-6">
				<h1>Search course</h1>
				<br>
				<form action="update" method="POST">
					<label>Search!!</label> <input type="number" name="c_id"
						class="form-control" placeholder="Enter course id to update">
					<br> <input type="submit">
				</form>
				<a href="allcourses.jsp" type="button" class="btn">All Courses</a>
				
				</div>
		</div>
	</div>
</body>
</html>
				