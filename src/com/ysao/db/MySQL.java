package com.ysao.db;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;


public class MySQL {

	static final Logger logger = Logger.getLogger(MySQL.class.getName());
	
	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		//String sql = "select case_id, status, request_id, template_id, process_time from testrun_qe2_FVT where run_id = 332 ";
		
		String sql = "select count(*) from testrun_qe1_FVT where run_id = 332 ";
		
		JSONArray s = MySQL.query2Json(sql);
		System.out.println(s.toString());
	}
	
	public static Connection con = null;
	
	public static Connection getConnection() throws Exception{
		if(con == null || con.isClosed()){
		String connectionURL = "jdbc:mysql://localhost:3306/ysao?autoReconnect=true";
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;

		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection(connectionURL, "ouser", "password");
	}
		
		return con;
		
	}
	
	

	public static Connection getNewConnection() throws Exception{
		Connection newconn = null;
		String connectionURL = "jdbc:mysql://10.162.182.137:3306/ysao";
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;

		Class.forName("com.mysql.jdbc.Driver").newInstance();
		newconn = DriverManager.getConnection(connectionURL, "ouser", "password");
		
		return newconn;
		
	}
	
	
	public static int insert(String sql) throws Exception{
		
		  Statement s = getConnection().createStatement ();
		 
		  int count;
		  
		  count = s.executeUpdate (sql);
		  
		  s.close ();
		 
		  
		  return 1;
		 
	}
	
	public static String query(String sql) throws Exception{
		 Statement stmt = getConnection().createStatement() ;

	      // Execute the query
	      ResultSet rs = stmt.executeQuery(sql) ;
	      
	      System.out.println(sql);
	      String result = null;
	      // Loop through the result set
	      while( rs.next() )
	         result=  rs.getString(1) ;

	      // Close the result set, statement and the connection
	      rs.close() ;
	      stmt.close() ;
	      if(result == null)
	    	  return "1";
	      else
	    	  return result;
	      
	}
	
	
	public static List<String> getTestCases() throws Exception{
		 Statement stmt = getConnection().createStatement() ;

	      // Execute the query
	     ResultSet rs = stmt.executeQuery("select id from testcase where test_group = 'FVT' order by id desc") ;
	      
	     List<String> result = new ArrayList<String>();
	      
	      // Loop through the result set
	     while(rs.next()){
	    	 result.add(rs.getString("id")) ;
	     }
	      // Close the result set, statement and the connection
	      rs.close() ;
	      stmt.close() ;
	      
	      return result;
	      
	}
	
	public static JSONArray query2Json(String sql) throws Exception{
		 Statement stmt = getConnection().createStatement() ;

	      // Execute the query
	      ResultSet rs = stmt.executeQuery(sql);
	      
	      JSONArray result = convert(rs);
	      
	      rs.close();
	      
	      rs.close();
	      
	      return result;
	}
	
	public static List<String> getRunList(String env, String category){
		
		String sql = "select runid from runlist where env_name = '" + env + "' and case_category='" + category + "' and visible = 1 order by id desc";
		
		  List<String> result = new ArrayList();
		  
		  try{
		 Statement stmt = getConnection().createStatement() ;

	      // Execute the query
	      ResultSet rs = stmt.executeQuery(sql) ;
	      
	    
	      // Loop through the result set
	      while( rs.next())
	         result.add(rs.getString(1));

	      // Close the result set, statement and the connection
	      rs.close() ;
	      stmt.close() ;
		  }catch(Exception e){
			  e.printStackTrace();
		  }
		  
	      return result;
		
	}
	
	public static String getNextRunID(String env, String category) throws Exception{
		String sql = "SELECT max(id) + 1 FROM dwtar.runlist where env_name = '" + env + "' and case_category = '" + category + "';";
		
		String result = MySQL.query(sql);
		
		return result;
		
	}
	
	public static JSONArray convert( ResultSet rs )
		    throws SQLException, JSONException
		  {
		    JSONArray json = new JSONArray();
		    ResultSetMetaData rsmd = rs.getMetaData();

		    while(rs.next()) {
		      int numColumns = rsmd.getColumnCount();
		      JSONObject obj = new JSONObject();

		      for (int i=1; i<numColumns+1; i++) {
		        String column_name = rsmd.getColumnLabel(i);

		        if(rsmd.getColumnType(i)==java.sql.Types.ARRAY){
		         obj.put(column_name, rs.getArray(column_name));
		        }
		        else if(rsmd.getColumnType(i)==java.sql.Types.BIGINT){
		         obj.put(column_name, rs.getInt(column_name));
		        }
		        else if(rsmd.getColumnType(i)==java.sql.Types.BOOLEAN){
		         obj.put(column_name, rs.getBoolean(column_name));
		        }
		        else if(rsmd.getColumnType(i)==java.sql.Types.BLOB){
		         obj.put(column_name, rs.getBlob(column_name));
		        }
		        else if(rsmd.getColumnType(i)==java.sql.Types.DOUBLE){
		            obj.put(column_name, rs.getDouble(column_name)); 
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.FLOAT){
		            obj.put(column_name, rs.getFloat(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.INTEGER){
		            obj.put(column_name, rs.getInt(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.NVARCHAR){
		            obj.put(column_name, rs.getNString(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.VARCHAR){
		            obj.put(column_name, rs.getString(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.TINYINT){
		            obj.put(column_name, rs.getInt(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.SMALLINT){
		            obj.put(column_name, rs.getInt(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.DATE){
		            obj.put(column_name, rs.getDate(column_name));
		           }
		           else if(rsmd.getColumnType(i)==java.sql.Types.TIMESTAMP){
		        	   obj.put(column_name, rs.getString(column_name));   
		           }else if(rsmd.getColumnType(i) == java.sql.Types.TIME){
		        	   obj.put(column_name, rs.getString(column_name));
		           }
		           else{
		            obj.put(column_name, rs.getObject(column_name));
		           }
		         }

		         json.add(obj);
		       }
		    
		    return json;
		  }



	public static int deleteRuns(String ids) throws Exception {
		String sql = "update runlist set visible = 0 where id in (" + ids + ");";
		System.out.println(sql);
		
		Statement s = getConnection().createStatement ();
		 
		int count;
		  
		count = s.executeUpdate (sql);
		  
		s.close ();
		 
		return count;
		 
	}
	
	public static void closeCON(Connection con){
		if (con != null){
			try{
				con.close();
			}catch(Exception e){
				logger.warning("Fail to close connection " + e.getMessage());
			}
		}
	}
	
	
	public static void closeSTMT(Statement smtm){
		if (smtm != null){
			try{
				smtm.close();
			}catch(Exception e){
				logger.warning("Fail to close statement " + e.getMessage());
			}
		}
	}
	
	public static void closeRS(ResultSet rs){
		if (rs != null){
			try{
				rs.close();
			}catch(Exception e){
				logger.warning("Fail to close reslutset " + e.getMessage());
			}
		}
	}
	

}
