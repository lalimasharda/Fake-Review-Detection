package User;

import java.io.File;

import java.sql.ResultSet;
import java.sql.SQLException;
import databaseconnection.DatabaseConnection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileUtils;


/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/logout")
public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
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
		//HttpSession session = request.getSession();
		//String username = (String) session.getAttribute("username");
		//DatabaseConnection db = new DatabaseConnection();
		//db.dbconnection();
		
		//String query = "delete from userloginrequest Where UserID='"+UserID+"'";
		//db.getUpdate(query);
		//String path = getServletContext().getRealPath("/");
		//FileUtils.deleteDirectory(new File(path+"/"+UserID));
		request.getSession().setAttribute("username",null);
		response.sendRedirect("index.jsp");
	}
}
