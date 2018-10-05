package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class trasactionDone
 */
@WebServlet("/trasactionDone")
public class trasactionDone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trasactionDone() {
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
		String username =request.getParameter("NameOnCard");
		//String username =(String) request.getAttribute("NameOnCard");
		try{
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "select * from addcart where UserName='"+username+"'";
		ResultSet rs = (ResultSet) db.getResultSet(query);
		
		while(rs.next())
		{
			
			String username1=rs.getString("UserName");
			String Productid=rs.getString("Productid");
			String ProductName=rs.getString("ProductName");
			System.out.println(username1);
			
			
			String query1 = "insert into userpurcheshproductlist(UserName,Productid,ProductName) values('"+username1+"','"+Productid+"','"+ProductName+"')";
			db.getUpdate(query1);
			String query2 = "delete from addcart Where UserName='"+username+"' and Productid='"+Productid+"'";
			db.getUpdate(query2);
			
		}
		String query2 = "delete from addcart Where UserName='"+username+"'";
		db.getUpdate(query2);
		out.println("<script type=\"text/javascript\">");
    	out.println("alert('Transaction Done Successfully');");
    	out.println("location=\"Products.jsp\"");
    	out.println("</script>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
