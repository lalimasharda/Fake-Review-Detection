package User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class Addcart
 */
@WebServlet("/Addcart")
public class Addcart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addcart() {
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
		String productid=request.getParameter("productid");
		String product_name=request.getParameter("product_name");
		String amount=request.getParameter("amount");
		String quantity=request.getParameter("quantity");
		String productimage=request.getParameter("productimage");
		
		//String path=getServletContext().getRealPath("/upload");
		
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "insert into addcart(UserName,Productid,ProductName,ProductPrice,Quantity,pimage) values('"+UserName+"','"+productid+"','"+product_name+"','"+amount+"','"+quantity+"','"+productimage+"')";
		db.getUpdate(query);
		
		//File udir = new File(path +"/"+ username);
		//if (!(udir.exists())) {
		//	udir.mkdir();
		//}
		
		out.println("<script type=\"text/javascript\">");
    	out.println("alert('successfuly added into cart.... "+UserName+"');");
    	out.println("location=\"Products.jsp\"");
    	out.println("</script>");
	}

}
