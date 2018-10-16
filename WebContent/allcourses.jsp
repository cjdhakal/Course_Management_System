<html>
<head>
<title>Search Page</title>
<style>
</style>
<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*" %>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
               <a class="nav-link" href="courses.jsp">Search Course</a> 
            </li> 
          </ul> 
              <a style="color:#fff!important" class="nav-link" href="logout">Logout</a>
        </div>
      </nav>
    </header>

<div class="container">
         
<div class="row">
<div style="" class="col-md-12">

<form style="margin-top:200px!important" method="post">
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
<%		
		try
{
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery("select cid,c_name,s_date,e_date,seats from course_details");
while(rs.next())
{

%>
    <tr><td><%= rs.getInt(1)%></td>
    <td><%= rs.getString(2)%></td>
    <td><%= rs.getDate(3) %></td>
    <td><%= rs.getDate(4) %></td>
    <td><%= rs.getInt(5) %></td>
    </tr>
        <%

}
%>
  </tbody>
    </table>
    <%
    rs.close();
    stmt.close();
    con.close();
}
catch(Exception e)
{
    e.printStackTrace();
    }
%>
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
