import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import oracle.jdbc.OracleDriver;
import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.sql.*;
import javax.servlet.http.*;

@WebServlet("/update")
public class UpdateCourseServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// String c_name=request.getParameter("c_id");
		
//		 HttpSession session = request.getSession(false);
//
//		   if(session!=null){  
//		        String name=(String)session.getAttribute("u_name");  
//		          
//		        out.println("Hello, "+name+" Welcome to Profile" + session);  
//		        }  
//		        else{  
//		            out.println("Please login first");  
//		            
//		        }  		 
		HttpSession session = request.getSession();
		
		int c_id = Integer.parseInt(request.getParameter("c_id"));
		out.println(c_id);
		session.setAttribute("c_id", c_id);
		try {
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery("select cid,c_name,s_date,e_date,seats from course_details");
			boolean found = false;
			while (rs.next()) {
				int c_id1 = rs.getInt(1);
				String c_name = rs.getString(2);
				Date s_date = rs.getDate(3);
				Date e_date = rs.getDate(4);
				int seats = rs.getInt(5);
				if (c_id == c_id1) {
					found = true;
					RequestDispatcher dispatcher = request.getRequestDispatcher("updatenew.jsp");
					request.setAttribute("id", c_id1);
					request.setAttribute("name", c_name);
					request.setAttribute("sdate", s_date);
					request.setAttribute("edate", e_date);
					request.setAttribute("seats", seats);
					dispatcher.forward(request, response);
					// out.println(
					// "<html> <link
					// href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\"
					// rel=\"stylesheet\"
					// integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\"
					// crossorigin=\"anonymous\">\r\n" +
					// "<head><body> <table class=\"table table-bordered\"><thead><tr><th>Course
					// Id</th><th>Course Name</th><th>Start Date</th><th>End Date</th><th>Seats</th>
					// <tbody><tr><td>"+c_id1+"</td><td>"+c_name+"</td>
					// <td>"+s_date+"</td><td>"+e_date+"</td><td>"+seats+"</td></tr></tbody></table>");
					break;

				}
				// else
				// found= false;
				// }
				// if(found)
				// {
				// out.println("Found");

			}
			if (!found) {
				RequestDispatcher rd = request.getRequestDispatcher("updatecourse.jsp");
				rd.forward(request, response);
			}
		}

		catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}