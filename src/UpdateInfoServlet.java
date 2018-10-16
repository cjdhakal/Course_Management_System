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

@WebServlet("/updateinfo")
public class UpdateInfoServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String oid=request.getAttribute("id").toString();
		int oid1 = Integer.parseInt(oid);
		int cid = Integer.parseInt(request.getParameter("course-id"));
		String cname = request.getParameter("course-name");
		String sdate = request.getParameter("start-date");
		String edate = request.getParameter("end-date");
		int seats = Integer.parseInt(request.getParameter("seats"));
		out.println(oid1);
		
		

//		try {
//			DriverManager.registerDriver(new OracleDriver());
//			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
//			PreparedStatement ps = con.prepareStatement("update course_details set cid=?,c_name=?,s_date=?,e_date=?,seats=? where cid=?");
//
//				ps.setInt(1, cid);
//				ps.setString(2, cname);
//				ps.setDate(3, java.sql.Date.valueOf(sdate));
//				ps.setDate(4, java.sql.Date.valueOf(edate));
//				ps.setInt(5, seats);
//				ps.setInt(5, o_id);
//				ps.executeUpdate();
//				response.sendRedirect("addcourse.jsp");
//		} catch (Exception e2) {
//			System.out.println(e2);
//		}
//
//		out.close();
	}

}