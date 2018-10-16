<html>
   <head>
      <title>CourseList Page</title>
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <link href="style.css" rel="stylesheet">
      <link href="sticky-footer.css" rel="stylesheet">
   </head>
   
   <%if( (session.getAttribute("u_type").equals("Student"))) {out.println("<html><script> alert(\"Kindly Login As ADMIN!!!\"); window.location.href=\"logout\"</script></html>"); }%>
   
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
               <a class="nav-link" href="allcourses.jsp">CourseList</a>
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
            <div class="col-md-3"></div>
            <div class="col-md-6">
               <h1>Add Course</h1>
				<form action="add" method="POST" onsubmit="return dateValidate()">
				<div class="form-group">
					<label>Course id</label>
					<input type="number" name="course-id" required class="form-control">
				</div>
				<div class="form-group">
					<label>Course name</label>
					<input type="text" name="course-name" required class="form-control">
				</div>
				<div class="form-group">
					<label>Start date</label>
					<input type="date" id="startdate" name="start-date" required class="form-control">
				</div>
				<div class="form-group">
					<label>End date</label>
					<input type="date" id="enddate" name="end-date" required class="form-control">
				</div>
				<div id="error-message"></div>
				<div class="form-group">
					<label>Seats</label>
					<input type="number" name="seats" min="1" max="30" required class="form-control">
				</div>
				<input type="submit">
				
				</form>
            </div>
            <div class="col-md-3"></div>
         </div>
      </div>
      <footer class="footer">
         <div class="container">
            <span class="text-muted">Copyright &copy; virtusa corporation.</span>
         </div>
      </footer>
	<script>

	function dateValidate(){
		
		var d1 = document.getElementById('startdate').value;
		var d2 = document.getElementById('enddate').value;
	
	    //var x = document.getElementById("myDate").value;
	    
	    var dateEntered1 = Date.parse(d1);
	    var dateEntered2 = Date.parse(d2);
	    
	   // alert(dateEntered2 - dateEntered1); 
	    
	    if(dateEntered2 - dateEntered1 < 0){
	    	document.getElementById('error-message').innerHTML = "<span style='color: red; padding: 5px;'>Invalid Dates!</span>";
	    	return false;
	    	
	    }
	    else 
	    	return true;
	    
	}

	</script> 
   </body>
</html>