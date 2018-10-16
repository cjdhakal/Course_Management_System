import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import oracle.jdbc.OracleDriver;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.sql.*;
import java.util.Date;

import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("userName");
		String p = request.getParameter("userPass");

		try {
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery("select username,password,user_type from registeruser");
			boolean found = false;
			while (rs.next()) {
				String username = rs.getString(1);
				String password = rs.getString(2);
				String usertype = rs.getString(3);
				if (username.equals(n) && password.equals(p)) {
					found = true;
					HttpSession session = request.getSession();
					session.setAttribute("u_name", username);
					session.setAttribute("u_type", usertype);
					// HttpSession session=request.getSession(false);
					if (session != null && usertype.equals("Student")) {
						RequestDispatcher dispatcher = request.getRequestDispatcher("courses.jsp");
						request.setAttribute("username", username);
						request.setAttribute("u_type", usertype);
						dispatcher.forward(request, response);
					}
					else if (session != null && usertype.equals("Admin")) {
						RequestDispatcher dispatcher = request.getRequestDispatcher("addcourse.jsp");
						request.setAttribute("username", username);
						request.setAttribute("u_type", usertype);
						dispatcher.forward(request, response);
					}
					break;
				}
				// else
				// found=false;
			}
			// if(found){
			//
			//
			// }
			if (!found) {
				out.println("<html><script> alert(\"Username Doesn't Exist!!!\"); window.location.href=\"index.jsp\"</script></html>");
			}
			
		}

		catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}
