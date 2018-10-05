package MainPAckage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import databaseconnection.DatabaseConnection;

public class CalculateOccurances {
//1
	/**
	 * @param args
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws SQLException {
	

		String tablename="courseradata";
		
		String sqldata="select * from "+tablename;
		
DatabaseConnection db1 = new DatabaseConnection();
		
        String columndata="";
        Connection con=db1.dbconnection();
		String category="",subcategory="";
	    String html = "<a class=\"sushi-restaurant\" href=\"/greatSushi\">Best Sushi in town</a>";
	  
	    ArrayList dataofcategory=new ArrayList<>();
	    HashMap<String, Integer> map=new HashMap<>();
	    HashMap<String, String> perticularcategorymap=new HashMap<>();
	    //HashMap<String, String> map=new HashMap<>();
	    
	    
	    
	    
String sql1="select distinct(classification) from statement";
    	
    	PreparedStatement ps11;
    	
    		ps11 = con.prepareStatement(sql1);
    		// ps1.setString(1, "1" );
    		    
    	     ResultSet rs1=ps11.executeQuery();
            while(rs1.next()) {
	    
	    String classified=rs1.getString("classification");
	    map=new HashMap<>();
	    
 String sql="select * from statement where classification='"+classified+"'";
    	
    	PreparedStatement ps1;
    	
    		ps1 = con.prepareStatement(sql);
    		// ps1.setString(1, "1" );
    		    
    	     ResultSet rs=ps1.executeQuery();
            while(rs.next()) {
//            	dataofcategory.add(rs.getString("category"));
            	
            	String text=rs.getString("statement");
            	String categorys=rs.getString("classification");
//               	String subcategorys=rs.getString("subcategory");
            	
            	String splittext[]=text.split(" ");
            	
            	String query="";
            	
            	for(int i=0;i<splittext.length;i++){
            	    String word = splittext[i];
            	    if(!word.equals("")){
            	    if (map.containsKey(word+"_"+categorys)){
            	        map.put(word+"_"+categorys, map.get(word+"_"+categorys)+1);
//            	        query="insert into wordoccurances values ( '"+word+"','"+categorys+"','"+map.get(word)+"')"; 
            	        
            	    }
            	    else {
            	        map.put(word+"_"+categorys, 1);
//            	        query="insert into wordoccurances values ( '"+word+"','"+categorys+"','"+map.get(word)+"')";
            	    }
            	    
//            	    System.out.println(query);
//            	    db1.getUpdate(query);
            	    }
            	}
            	
            	
            	
            	
            	
            }
	    
		System.out.println(map);
		System.out.println(map.size());
		for (Map.Entry<String, Integer> entry : map.entrySet()) {
		    String key = entry.getKey();
		    
		    String splitwithcategory[]=key.split("_");
		    
		    int value = entry.getValue();
		   String query="insert into wordoccurances values ( '"+splitwithcategory[0]+"','"+splitwithcategory[1]+"','"+value+"')";
		 System.out.println(query);
		   
		   db1.getUpdate(query);
		    
		    // ...
		}
	
            }
		
		
		
	}

}
