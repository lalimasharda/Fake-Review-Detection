package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MainPAckage.ClassifySentence;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class AlgorithmAnalysisReview
 */
@WebServlet("/AlgorithmAnalysisReview")
public class AlgorithmAnalysisReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlgorithmAnalysisReview() {
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
		try{
			DatabaseConnection db = new DatabaseConnection();
			db.dbconnection();
			String query = "select * from userreview ";
			ResultSet rs = (ResultSet) db.getResultSet(query);
			
			while(rs.next())
			{
				
				int productid=rs.getInt("Productid");
				String UserName=rs.getString("UserName");
				String Emailid=rs.getString("Emailid");
				String statement=rs.getString("Statement");
				String DateTime=rs.getString("DateTime");
//				String status=rs.getString("status");
			String op=	ClassifySentence.classifysentenceinto(statement);
				
				String query1 = "insert into algorithmreview(Productid,UserName,Emailid,statement,DateTime,status) values('"+productid+"','"
						+UserName+"','"+Emailid+"','"+statement+"','"+DateTime+"','"+op+"')";
				db.getUpdate(query1);
				
			}
			out.println("<script type=\"text/javascript\">");
	    	//out.println("alert('Review saved successfuly');");
	    	out.println("location=\"Admin//AlgorithmFiltering.jsp\"");
	    	out.println("</script>");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

	
	}

}
