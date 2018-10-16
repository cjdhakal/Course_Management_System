import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import oracle.jdbc.OracleDriver;

import javax.servlet.http.*;

@WebServlet("/add")
public class CourseAddServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int cid = Integer.parseInt(request.getParameter("course-id"));
		String cname = request.getParameter("course-name");
		String sdate = request.getParameter("start-date");
		String edate = request.getParameter("end-date");
		int seats = Integer.parseInt(request.getParameter("seats"));
		
		

		try {
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery("select cid from course_details");
			boolean flag = false;
			while (rs.next()) {
				int cid1 = rs.getInt(1);
				if (cid==cid1) {
					flag = true;
					out.println(
							"<html><script> alert(\"Course ID Already Exist!!!\"); window.location.href=\"addcourse.jsp\"</script></html>");
					break;
				}
			}

			if (!flag) {
				PreparedStatement ps = con.prepareStatement("insert into course_details values(?,?,?,?,?)");

				ps.setInt(1, cid);
				ps.setString(2, cname);
				ps.setDate(3, java.sql.Date.valueOf(sdate));
				ps.setDate(4, java.sql.Date.valueOf(edate));
				ps.setInt(5, seats);
				ps.executeUpdate();
				response.sendRedirect("allcourses.jsp");
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}