<html>
<head>
<title>Search Page</title>
<style>
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!--  <link href="style.css" rel="stylesheet">-->
<link href="sticky_footer.css" rel="stylesheet">
	

</head>
<body>

  <!--     <nav class="navbar navbar-expand-sm bg-light">
         <ul class="navbar-nav">
            <li class="nav-item">
               <a class="nav-link" href="register.jsp">Registration</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="logout">Logout</a>
            </li>

            
         </ul>
         </nav>
 -->
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
<body>
<div class="container">
         
<div class="row">
<div style="" class="col-md-12">

<form action="updateinfo" method="POST" onsubmit="return dateValidate()">
				<div class="form-group">
					<label>Course id</label>
					<input type="number" value="<%= request.getAttribute("id") %>" name="course-id" required class="form-control">
				</div>
				<div class="form-group">
					<label>Course name</label>
					<input type="text" value="<%= request.getAttribute("name") %>" name="course-name" required class="form-control">
				</div>
				<div class="form-group">
					<label>Start date</label>
					<input type="date" id="startdate" value="<%= request.getAttribute("sdate") %>" name="start-date" required class="form-control">
				</div>
				<div class="form-group">
					<label>End date</label>
					<input type="date" id="enddate" value="<%= request.getAttribute("edate") %>" name="end-date" required class="form-control">
				</div>
				<div id="error-message"></div>
				<div class="form-group">
					<label>Seats</label>
					<input type="number" value="<%= request.getAttribute("seats") %>" name="seats" min="1" max="30" required class="form-control">
				</div>
				<input type="submit">
				
				</form>				
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
