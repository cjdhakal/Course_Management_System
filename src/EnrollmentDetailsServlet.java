import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import oracle.jdbc.OracleDriver;

import javax.servlet.http.*;

@WebServlet("/enrolldetails")
public class EnrollmentDetailsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int cid = Integer.parseInt(request.getParameter("id"));
		String cname=request.getParameter("cname");
		HttpSession session = request.getSession();
		String uname=session.getAttribute("u_name").toString();

		try {
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery("select cid,ename,cname from enrolled");
			boolean flag = false;
			out.println("<html> <table> <thead> <tr> <th>Course Id</th> <th>Course Name</th> <th>Start Date</th> <th>End Date</th> <th>Seats</th> </tr> </thead> </html>");
			while (rs.next()) {
				String ename= rs.getString(2);
				if (ename.equals(uname)) {
					flag = true;
					
					
					out.println ("<html> <tbody> <tr> <td><%= request.getAttribute(\"id\") %> </td> <td> <%= request.getAttribute(\"name\") %></td> <td><%= request.getAttribute(\"sdate\") %></td> <td><%= request.getAttribute(\"edate\") %></td> <td><%= request.getAttribute(\"seats\") %></td> </tr> </tbody> </table> </html>");
					
					break;
				}
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}