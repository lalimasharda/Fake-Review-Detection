package MainPAckage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import databaseconnection.DatabaseConnection;

public class ProbabilityOFeachwordWithClass {
//3
	/**
	 * @param args
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws SQLException {
	
int totalnumofwordwithrepataionspos=14;
int totalnumofwordwithrepataionsneg=6;
int distinctwordinallclass=10;
int totaldrpos=totalnumofwordwithrepataionspos+distinctwordinallclass;
int totaldrneg=totalnumofwordwithrepataionsneg+distinctwordinallclass;
		String tablename="courseradata";
		
		String sqldata="select * from "+tablename;
		
DatabaseConnection db1 = new DatabaseConnection();
		
        String columndata="";
        Connection con=db1.dbconnection();
		String category="",subcategory="";
	    String html = "<a class=\"sushi-restaurant\" href=\"/greatSushi\">Best Sushi in town</a>";
	  
	    ArrayList dataofcategory=new ArrayList<>();
	    HashMap<String, Double> map=new HashMap<>();
	    HashMap<String, String> perticularcategorymap=new HashMap<>();
	    //HashMap<String, String> map=new HashMap<>();
	    
	    
String sql19="select count(distinct(word)) as wrdcnt from wordwithclass";
    	
    	PreparedStatement ps119;
    	
    		ps119 = con.prepareStatement(sql19);
    		// ps1.setString(1, "1" );
    		    
    	     ResultSet rs19=ps119.executeQuery();
            if(rs19.next()) {
            	distinctwordinallclass=rs19.getInt("wrdcnt");;
            }
	    
String sql1="select distinct(classification) from statement";
    	
    	PreparedStatement ps11;
    	
    		ps11 = con.prepareStatement(sql1);
    		// ps1.setString(1, "1" );
    		    
    	     ResultSet rs1=ps11.executeQuery();
            while(rs1.next()) {
	    
	    String classified=rs1.getString("classification");
//	    map=new HashMap<>();
String sql12="select distinct(word) from wordoccurances";
    	
    	PreparedStatement ps112;
    	
    		ps112 = con.prepareStatement(sql12);
    		// ps1.setString(1, "1" );
    		    
    	     ResultSet rs12=ps112.executeQuery();
            while(rs12.next()) {
            	
           
	    
	    String word=rs12.getString("word");
	    
	    
	    
	    
	    
 String sql="select * from wordoccurances where class='"+classified+"' and word='"+word+"'";
    	
    	PreparedStatement ps1;
    	
    		ps1 = con.prepareStatement(sql);
    		// ps1.setString(1, "1" );
    		    
    	     ResultSet rs=ps1.executeQuery();
    	     
    	     int totaldr=0;
    	     String sql6="select count(*) as count from wordwithclass where class='"+classified+"'";
    	    	
    	    	PreparedStatement ps16;
    	    	
    	    		ps16 = con.prepareStatement(sql6);
    	    		// ps1.setString(1, "1" );
    	    		    
    	    	     ResultSet rs6=ps16.executeQuery();
    	    	     
    	     if(rs6.next())
    	     {
    	    	 
    	    	 totaldr=rs6.getInt("count")+distinctwordinallclass; 
    	     }
    	     
//    	     if(classified.equals("positive"))
//    	     {
//    	    	 totaldr=totaldrpos;	 
//    	    	 
//    	     }
//    	     else
//    	     {
//    	    	 totaldr=totaldrneg; 
//    	    	 
//    	     }
    	     
            if(rs.next()) {
//            	dataofcategory.add(rs.getString("category"));
            	
            	String occurances=rs.getString("occurances");
            	
            	int occurancesint=Integer.parseInt(occurances);
            	
            	double probcal=(double)(occurancesint+1)/totaldr;
            	
            	map.put(word+"_"+classified, probcal);
            	
            	
            	
//               	String subcategorys=rs.getString("subcategory");
            	
            }
            else
            {
            	double probcal=(double)1/totaldr;
            	
            	map.put(word+"_"+classified, probcal);
            	
            	
            }
	    
            }
	
            }
		
            
            System.out.println(map);
            
            
            for (Map.Entry<String, Double> entry : map.entrySet()) {
    		    String key = entry.getKey();
    		    
    		    String splitwithcategory[]=key.split("_");
    		    
    		    double value = entry.getValue();
    		   String query="insert into wordwithprobability values ( '"+splitwithcategory[0]+"','"+splitwithcategory[1]+"','"+value+"')";
    		 System.out.println(query);
    		   
    		   db1.getUpdate(query);
    		    
    		    // ...
    		}     
            
            
		
		
	}

}
