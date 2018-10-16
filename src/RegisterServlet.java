import java.io.IOException;
import java.io.PrintWriter;
import oracle.jdbc.OracleDriver;
import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.sql.*;
import javax.servlet.http.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String f = request.getParameter("fullname");
		String n = request.getParameter("userName");
		String p = request.getParameter("userPass");
		String e = request.getParameter("userEmail");
		String c = request.getParameter("userType");

		try {
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery("select username from registeruser");
			boolean flag = false;
			while (rs.next()) {
				String username = rs.getString(1);
				if (n.equals(username)) {
					flag = true;
					out.println(
							"<html><script> alert(\"Username Exist!!!\"); window.location.href=\"register.jsp\"</script></html>");
					break;
				}
			}

			// if(flag)
			// {
			//// RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
			//// rd.forward(request, response);
			// out.println("<html><script> alert(\"Username Exist!!!\");</script></html>");
			//
			//
			// }
			if (!flag) {
				PreparedStatement ps = con.prepareStatement("insert into registeruser values(?,?,?,?,?)");

				ps.setString(1, f);
				ps.setString(2, n);
				ps.setString(3, p);
				ps.setString(4, e);
				ps.setString(5, c);
				ps.executeUpdate();
				response.sendRedirect("index.jsp");
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}

// @WebServlet("/date")
// public class DateServlet extends GenericServlet {
//
//
// public void service(ServletRequest request, ServletResponse response) throws
// ServletException, IOException {
//
// response.setContentType("text/html");
// PrintWriter out = response.getWriter();
// String username1="chandra";
// String password1="chandra";
// String username = request.getParameter("userName");
// String password = request.getParameter("password");
// if(username.equals(username1) && password.equals(password1))
// {
// out.println("<html> <head> <body> <p> Hello "+ username + " "+ password +" "+
// new Date() + "</p> </body> </head></html>");
// }
// else
// {
// out.println("<html><head><body> <p> Invalid Credentials </p> </body>
// </head></html>");
// }
//
// out.println("<html> <head> <body> <p> Hello Everyone!!! "+ new Date() + "</p>
// </body> </head></html>");
//// try{
//// out.println("People");
//// DriverManager.registerDriver(new OracleDriver());
//// out.println("Connected");
//// Connection
// con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
//// out.println("Connected Again");
//// }
//// catch (Exception e)
//// {
//// out.println("Got an exception! ");
//// }
// out.close();
// }
//
// }
