package User;

import java.sql.ResultSet;

import databaseconnection.DatabaseConnection;

public class TimeStramReview {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
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
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}
