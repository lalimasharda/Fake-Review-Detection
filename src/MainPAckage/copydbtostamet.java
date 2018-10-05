package MainPAckage;

import java.sql.ResultSet;
import java.sql.SQLException;

import databaseconnection.DatabaseConnection;

public class copydbtostamet {

	/**
	 * @param args
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws SQLException {

		
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "select * from userreview";
		ResultSet rs = (ResultSet) db.getResultSet(query);
		
		while(rs.next())
		{	
		String statement=rs.getString("statement");
		String status=rs.getString("status");
		
		String qry="insert into statement(statement,classification) values ('"+statement+"','"+status+"')";
		db.getUpdate(qry);
		
		}
		

	}

}
