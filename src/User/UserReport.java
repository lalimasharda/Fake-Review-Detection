package User;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class UserReport
 */
@WebServlet("/UserReport")
public class UserReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserReport() {
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
		String productid=request.getParameter("productid");
		String UserName=request.getParameter("UserName");
		String Emailid=request.getParameter("Emailid");
		String statement=request.getParameter("statement");
		String ReportingUser=request.getParameter("ReportingUser");
		//ServletRequest session = null;
		//String ReportingUser=request.getAttribute("username");
		//String ReportingUser =(String) request.getAttribute("username");
		
		
		
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "insert into userreporting(Productid,UserName,Emailid,statement,ReportingUser,status) values('"+productid+"','"+UserName+"','"+Emailid+"','"+statement+"','"+ReportingUser+"','Pending')";
		db.getUpdate(query);
		
		//File udir = new File(path +"/"+ username);
		//if (!(udir.exists())) {
		//	udir.mkdir();
		//}
		
		out.println("<script type=\"text/javascript\">");
    	out.println("alert('Reporting successfuly saved "+ReportingUser+"');");
    	out.println("location=\"Products.jsp\"");
    	out.println("</script>");
	}

}
