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

@WebServlet("/enroll")
public class EnrollServlet extends HttpServlet {
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
			ResultSet rs = stmt.executeQuery("select cid,ename from enrolled");
			boolean flag = false;
			while (rs.next()) {
				int cid1 = rs.getInt(1);
				String ename= rs.getString(2);
				if (cid1==cid && ename.equals(uname)) {
					flag = true;
					out.println(
							"<html><script> alert(\"Already Enrolled!!!\"); window.location.href=\"courses.jsp\"</script></html>");
					break;
				}
			}

			if (!flag) {
				PreparedStatement ps = con.prepareStatement("insert into enrolled values(?,?,?)");

				ps.setInt(1, cid);
				ps.setString(2,uname);
				ps.setString(3,cname);
				ps.executeUpdate();
				PreparedStatement ps1 = con.prepareStatement("update course_details set seats=seats-1");
				ps1.executeUpdate();
//				ResultSet rs1 = stmt.executeUpdate("update course_details set seats=seats-1");
//				rs1.updateRow();
				out.println(
						"<html><script> alert(\"Succesfully Enrolled!!!\"); window.location.href=\"courses.jsp\"</script></html>");
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}