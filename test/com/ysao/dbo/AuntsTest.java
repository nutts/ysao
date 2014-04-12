package com.ysao.dbo;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;

public class AuntsTest {

	static final Logger logger = LogManager.getLogger(AuntsTest.class.getName());
	@Test
	public void test() throws Exception{
		AuntQueryParam param = new AuntQueryParam();
		
		Aunts aunts = new Aunts(param);
		
		List<Aunt> results = aunts.getResults();
		
		logger.trace("+++++++++++++++++++");
		assertTrue(results.size() > 2);
		
	}
	
	@Test
	public void testHTML() throws Exception{
		AuntQueryParam param = new AuntQueryParam();
		
		Aunts aunts = new Aunts(param);
		
		List<Aunt> results = aunts.getResults();
		for(Aunt a : results){
			
			logger.trace(a.toHtmlSearchItem());
		}
		
	}

}
