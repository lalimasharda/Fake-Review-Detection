package User;

import java.io.File;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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
		String FirstName=request.getParameter("FirstName");
		String LastName=request.getParameter("LastName");
		String EmailAddress=request.getParameter("EmailAddress");
		String MobileNumber=request.getParameter("MobileNumber");
		String UserName=request.getParameter("UserName");
		String Password=request.getParameter("Password");
		//String path=getServletContext().getRealPath("/upload");
		
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "insert into userdetail(First_Name,Last_Name,Email_Address,Mobile_Number,User_Name,Password) values('"+FirstName+"','"+LastName+"','"+EmailAddress+"','"+MobileNumber+"','"+UserName+"','"+Password+"')";
		db.getUpdate(query);
		
		//File udir = new File(path +"/"+ username);
		//if (!(udir.exists())) {
		//	udir.mkdir();
		//}
		
		out.println("<script type=\"text/javascript\">");
    	out.println("alert('New User Registration Successfully and user id is "+UserName+"');");
    	out.println("location=\"login.jsp\"");
    	out.println("</script>");
	}

}
