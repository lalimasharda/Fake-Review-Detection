package User;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = request.getParameter("UserName");
		String password = request.getParameter("Password");

		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "select * from userdetail where User_Name = '" + username
				+ "' and Password = '" + password + "'";
		ResultSet rs = (ResultSet) db.getResultSet(query);

		try {
			if (rs.next()) {
				//String Empid=rs.getString("employeeid");
				//HttpSession session = request.getSession();
				session.setAttribute("username", username);
				//session.setAttribute("user", username);
				//session.setAttribute("type", type);
				//if (rs.getString("type").equals("doctor"))
					
				response.sendRedirect("index1.jsp");
//				request.getRequestDispatcher("FirstPage.jsp").include(request,
//						response);
			} else {
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('wrong username or password')");
	        	out.println("location=\"login.jsp\"");
	        	out.println("</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
