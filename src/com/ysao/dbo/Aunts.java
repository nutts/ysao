package com.ysao.dbo;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ysao.db.MySQL;

public class Aunts {
	List<Aunt> results = null;
	AuntQueryParam param;
	
	static final Logger logger = LogManager.getLogger(Aunts.class.getName());
	
	public Aunts(AuntQueryParam _param){
		param = _param;
		
	}
	
	public List<Aunt> getResults() throws Exception{
		if(results == null){
			results = new ArrayList();
			init();
		}
		return results;
	}
	
	public String getResultsHTML() throws Exception{
		List<Aunt> r = getResults();
		StringBuilder sb = new StringBuilder();
		for(Aunt t: r){
			sb.append(t.toHtmlSearchItem());
		}
		
		logger.trace("in aunts string: " + sb.toString());
		return sb.toString();
		
	}
	private void init() throws Exception{
		String sql = param.toSQL();
		logger.trace(sql);
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
		 con = MySQL.getConnection();
		 stmt = con.createStatement() ;
	     // Execute the query
		 rs = stmt.executeQuery(sql) ;
	    
	      // Loop through the result set
		 while(rs.next()){
	    	Aunt aun = new Aunt();
	    	aun.setId(rs.getInt("idaunt"));
	    	aun.setName(rs.getString("name"));
	    	aun.setBirth_year(rs.getInt("birth_y"));
	    	aun.setJiguan(rs.getInt("jiguan"));
	    	aun.setPrice(rs.getInt("price"));
	    	aun.setPinfen(rs.getDouble("pinfen"));
	    	aun.setShow_pic(rs.getString("show_pic"));
	    	aun.setExperience(rs.getInt("experience"));
	    	
	    	logger.trace(aun);
	    	results.add(aun);
	    }
		}finally{
	    // Close the result set, statement and the connection
			MySQL.closeRS(rs);
			MySQL.closeSTMT(stmt);
			MySQL.closeCON(con);
		}
		
	}
}
