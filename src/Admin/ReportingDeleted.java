package Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class ReportingDeleted
 */
@WebServlet("/ReportingDeleted")
public class ReportingDeleted extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportingDeleted() {
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
		//HttpSession session = request.getSession();
		String reportingid = request.getParameter("reportingid");
		//String id=request.getParameter("productid");
		//System.out.println(id);
		//System.out.println(username);
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		
		String query = "delete from userreporting Where id='"+reportingid+"'";
		int i=db.getUpdate(query);
		if(i==1)
		{
			out.println("<script type=\"text/javascript\">");
        	out.println("alert('Reporting analysis Successfully')");
        	out.println("location=\"Admin/AnalyseUserReportingandApproval.jsp\"");
        	out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
        	out.println("alert('Error In Approval')");
        	out.println("location=\"checkout.jsp\"");
        	out.println("</script>");
		}
	}

}
