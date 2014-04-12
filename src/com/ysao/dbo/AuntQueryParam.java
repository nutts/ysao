package com.ysao.dbo;

import java.util.HashMap;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;




public class AuntQueryParam {
	static final Logger logger = LogManager.getLogger(AuntQueryParam.class.getName());
	
	private HashMap<String, String> hm = null;
	
	public AuntQueryParam(){
		hm = new HashMap<String, String>();
	}
	
	public void addParam(String key, String value){
		hm.put(key, value);
	}
	
	public String toSQL() {
		// TODO Auto-generated method stub
		StringBuilder sb = new StringBuilder();
		sb.append("select idaunt, name, birth_y, jiguan, price, show_pic, pinfen, experience from aunt ");
		if( hm.keySet().size() > 0){
			
		}
		logger.trace(sb.toString());
		return sb.toString();
		
	}

}
