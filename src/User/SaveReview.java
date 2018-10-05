package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class SaveReview
 */
@WebServlet("/SaveReview")
public class SaveReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveReview() {
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
		String UserName=request.getParameter("UserName");
		String UserEmailid=request.getParameter("UserEmailid");
		String Statement=request.getParameter("Statement");
		String productid=request.getParameter("productid");
		
		//String MobileNumber=request.getParameter("MobileNumber");
		//String UserName=request.getParameter("UserName");
		//String Password=request.getParameter("Password");
		//String path=getServletContext().getRealPath("/upload");
		//SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm dd/MM/YYYY");
		//Date date = new Date();
		//String currdate=dateFormat.format(date);
		
		
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "insert into userreview(Productid,UserName,Emailid,statement) values('"+productid+"','"+UserName+"','"+UserEmailid+"','"+Statement+"')";
		db.getUpdate(query);
		
		//File udir = new File(path +"/"+ username);
		//if (!(udir.exists())) {
		//	udir.mkdir();
		//}
		
		out.println("<script type=\"text/javascript\">");
    	out.println("alert('Review saved successfuly');");
    	out.println("location=\"index1.jsp\"");
    	out.println("</script>");
	}

}
