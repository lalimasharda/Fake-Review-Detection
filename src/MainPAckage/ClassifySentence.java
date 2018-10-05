package MainPAckage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import databaseconnection.DatabaseConnection;

public class ClassifySentence {
	// 4
	/**
	 * @param args
	 * @throws SQLException
	 */
	public static void main(String[] args) throws SQLException {

		String tablename = "courseradata";

		String sqldata = "select * from " + tablename;

		DatabaseConnection db1 = new DatabaseConnection();

		String columndata = "";
		Connection con = db1.dbconnection();
		String category = "", subcategory = "";
		String html = "<a class=\"sushi-restaurant\" href=\"/greatSushi\">Best Sushi in town</a>";

		ArrayList dataofcategory = new ArrayList<>();
		HashMap<String, Double> map = new HashMap<>();
		HashMap<String, String> perticularcategorymap = new HashMap<>();
		// HashMap<String, String> map=new HashMap<>();

		int totalclasscount = 0;

		String sql17 = "select count(classification) as cnt from statement";

		PreparedStatement ps117;

		ps117 = con.prepareStatement(sql17);
		// ps1.setString(1, "1" );

		ResultSet rs17 = ps117.executeQuery();
		if (rs17.next()) {

			totalclasscount = rs17.getInt("cnt");

		}

		double valuesofclass = 0.0;
		double finalvalofclass = 0.0;

		// double pofplus=(double)3/5;
		// double pofnegative=(double)2/5;

		String sentencesplit[] = "good movie".split(" ");

		String sql1 = "select distinct(classification) from statement";

		PreparedStatement ps11;

		ps11 = con.prepareStatement(sql1);
		// ps1.setString(1, "1" );

		ResultSet rs1 = ps11.executeQuery();
		while (rs1.next()) {

			String classified = rs1.getString("classification");

			String sql18 = "select count(classification) as count from statement where classification='"
					+ classified + "'";

			PreparedStatement ps118;

			ps118 = con.prepareStatement(sql18);
			// ps1.setString(1, "1" );

			ResultSet rs18 = ps118.executeQuery();
			if (rs18.next()) {

				valuesofclass = rs18.getDouble("count");

			}

			finalvalofclass = (double) valuesofclass / totalclasscount;

			double probability = 1.0;
			for (int k = 0; k < sentencesplit.length; k++) {

				String sql = "select * from wordwithprobability where class='"
						+ classified + "' and word='" + sentencesplit[k] + "'";

				PreparedStatement ps1;

				ps1 = con.prepareStatement(sql);
				// ps1.setString(1, "1" );

				ResultSet rs = ps1.executeQuery();
				while (rs.next()) {
					// dataofcategory.add(rs.getString("category"));

					String wordproba = rs.getString("probability");
					double wordprocal = Double.parseDouble(wordproba);
					probability = probability + Math.log(wordprocal);

				}

			}
			double finalprob = 0;
			// if(classified.equals("positive"))
			// {
			// finalprob=pofplus*probability;
			//
			// }
			// else
			// {
			// finalprob=pofnegative*probability;
			//
			// }

			finalprob = probability + Math.log(finalvalofclass);
			map.put(classified, finalprob);

		}

		double maxValueInMap = (Collections.max(map.values())); // This will
																// return max
																// value in the
																// Hashmap
		for (Entry<String, Double> entry : map.entrySet()) { // Itrate through
																// hashmap
			if (entry.getValue() == maxValueInMap) {

				System.out.println(entry.getKey()); // Print the key with max
													// value
			}
		}

		System.out.println(map);
		// System.out.println(map.size());
		// for (Map.Entry<String, Integer> entry : map.entrySet()) {
		// String key = entry.getKey();
		//
		// String splitwithcategory[]=key.split("_");
		//
		// int value = entry.getValue();
		// String
		// query="insert into wordoccurances values ( '"+splitwithcategory[0]+"','"+splitwithcategory[1]+"','"+value+"')";
		// System.out.println(query);
		//
		// db1.getUpdate(query);
		//
		// // ...
		// }

	}

	public static String classifysentenceinto(String sentence)
			throws SQLException {

		String tablename = "courseradata";

		String sqldata = "select * from " + tablename;

		DatabaseConnection db1 = new DatabaseConnection();

		String columndata = "";
		Connection con = db1.dbconnection();
		String category = "", subcategory = "";
		String html = "<a class=\"sushi-restaurant\" href=\"/greatSushi\">Best Sushi in town</a>";

		ArrayList dataofcategory = new ArrayList<>();
		HashMap<String, Double> map = new HashMap<>();
		HashMap<String, String> perticularcategorymap = new HashMap<>();
		// HashMap<String, String> map=new HashMap<>();

		int totalclasscount = 0;

		String sql17 = "select count(classification) as cnt from statement";

		PreparedStatement ps117;

		ps117 = con.prepareStatement(sql17);
		// ps1.setString(1, "1" );

		ResultSet rs17 = ps117.executeQuery();
		if (rs17.next()) {

			totalclasscount = rs17.getInt("cnt");

		}

		double valuesofclass = 0.0;
		double finalvalofclass = 0.0;

		// double pofplus=(double)3/5;
		// double pofnegative=(double)2/5;
System.out.println(sentence);
		String sentencesplit[] = sentence.split(" ");

		String sql1 = "select distinct(classification) from statement";

		PreparedStatement ps11;

		ps11 = con.prepareStatement(sql1);
		// ps1.setString(1, "1" );

		ResultSet rs1 = ps11.executeQuery();
		while (rs1.next()) {

			String classified = rs1.getString("classification");

			String sql18 = "select count(classification) as count from statement where classification='"
					+ classified + "'";

			PreparedStatement ps118;

			ps118 = con.prepareStatement(sql18);
			// ps1.setString(1, "1" );

			ResultSet rs18 = ps118.executeQuery();
			if (rs18.next()) {

				valuesofclass = rs18.getDouble("count");

			}

			finalvalofclass = (double) valuesofclass / totalclasscount;

			double probability = 1.0;
			for (int k = 0; k < sentencesplit.length; k++) {

				String sql = "select * from wordwithprobability where class='"
						+ classified + "' and word='" + sentencesplit[k] + "'";

				PreparedStatement ps1;

				ps1 = con.prepareStatement(sql);
				// ps1.setString(1, "1" );

				ResultSet rs = ps1.executeQuery();
				while (rs.next()) {
					// dataofcategory.add(rs.getString("category"));

					String wordproba = rs.getString("probability");
					double wordprocal = Double.parseDouble(wordproba);
					probability = probability + Math.log(wordprocal);

				}

			}
			double finalprob = 0;
			// if(classified.equals("positive"))
			// {
			// finalprob=pofplus*probability;
			//
			// }
			// else
			// {
			// finalprob=pofnegative*probability;
			//
			// }

			finalprob = probability + Math.log(finalvalofclass);
			map.put(classified, finalprob);

		}

		String ouput = "";

		double maxValueInMap = (Collections.max(map.values())); // This will
																// return max
																// value in the
																// Hashmap
		for (Entry<String, Double> entry : map.entrySet()) { // Itrate through
																// hashmap
			if (entry.getValue() == maxValueInMap) {

				ouput = entry.getKey();
				System.out.println(entry.getKey()); // Print the key with max
													// value
			}
		}

		System.out.println(map);
		// System.out.println(map.size());
		// for (Map.Entry<String, Integer> entry : map.entrySet()) {
		// String key = entry.getKey();
		//
		// String splitwithcategory[]=key.split("_");
		//
		// int value = entry.getValue();
		// String
		// query="insert into wordoccurances values ( '"+splitwithcategory[0]+"','"+splitwithcategory[1]+"','"+value+"')";
		// System.out.println(query);
		//
		// db1.getUpdate(query);
		//
		// // ...
		// }
		return ouput;

	}

}
