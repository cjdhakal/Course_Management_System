<html>
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
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Start Date</th>
				<th>End Date</th>
				<th>Seats</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%= request.getAttribute("id") %></td>
				<td><%= request.getAttribute("name") %></td>
				<td><%= request.getAttribute("sdate") %></td>
				<td><%= request.getAttribute("edate") %></td>
				<td><%= request.getAttribute("seats") %></td>
			</tr>
		</tbody>
	</table>
	
	<a href="enroll?id=<%= request.getAttribute("id")%>&cname=<%=request.getAttribute("name")%>" class="btn btn-primary">Enroll</a>

</div>
	<footer class="footer">
		<div class="container">
			<span class="text-muted">Copyright &copy; Virtusa Corporation</span>
		</div>
	</footer>	
</html>