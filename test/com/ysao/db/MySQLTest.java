package com.ysao.db;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

public class MySQLTest {

	@Test
	public void testConnection() throws Exception{
		Connection con = MySQL.getConnection();
		assertTrue(con != null);
		
	}

}
