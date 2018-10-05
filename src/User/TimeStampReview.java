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
 * Servlet implementation class TimeStampReview
 */
@WebServlet("/TimeStampReview")
public class TimeStampReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeStampReview() {
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
			String query = "select * from userreview order by DateTime ASC";
			ResultSet rs = (ResultSet) db.getResultSet(query);
			
			while(rs.next())
			{
				
				int productid=rs.getInt("Productid");
				String statement=rs.getString("Statement");
				String DateTime=rs.getString("DateTime");
				String status=rs.getString("status");
				
				
				String query1 = "select * from userreview where statement='"+statement+"' and DateTime!='"+DateTime+"' and Productid="+productid+" and status NOT IN ('Fake','True')";
				ResultSet rs1 = (ResultSet) db.getResultSet(query1);
				if(rs1.next())
				{
					
					String sql = "update userreview set status='Fake' where statement='"+statement+"' and DateTime!='"+DateTime+"' and Productid="+productid+"";
					String sql1 = "update userreview set status='True' where statement='"+statement+"' and DateTime='"+DateTime+"' and Productid="+productid+"";
					db.getUpdate(sql);
					db.getUpdate(sql1);
					System.out.println(sql);
					System.out.println(sql1);
					
				}
			}
			out.println("<script type=\"text/javascript\">");
	    	//out.println("alert('Review saved successfuly');");
	    	out.println("location=\"Admin/TimeStampReviewFiltering.jsp\"");
	    	out.println("</script>");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

	}

}
