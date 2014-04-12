package com.ysao.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import atg.taglib.json.util.JSONException;
import atg.taglib.json.util.JSONObject;

import com.ysao.dbo.AuntQueryParam;
import com.ysao.dbo.Aunts;

/**
 * Servlet implementation class Server
 */
@WebServlet("/Server")
public class Server extends HttpServlet {
	private static final long serialVersionUID = 1L;
    static final Logger logger = LogManager.getLogger(Server.class.getName());   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Server() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AuntQueryParam param = new AuntQueryParam();
		param.addParam("page", request.getParameter("page"));
		param.addParam("price", request.getParameter("price"));
		param.addParam("price_max", request.getParameter("price_max"));
		
		param.addParam("price_min", request.getParameter("price_min"));
		param.addParam("serv_from", request.getParameter("serv_from"));
		
		String result = search(param);
		response.setContentType("text/json");
		response.getWriter().write(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	private String search(AuntQueryParam param){
		Aunts a = new Aunts(param);
		String results = null;
		try{
		
			results = a.getResultsHTML();
		
		}catch(Exception e){
			logger.error("Fail to search aunts with param " + param.toString());
			logger.error(e.getMessage());
			results = "Fail to search aunts!";
			
		}
		
		JSONObject o = new JSONObject();
		try {
			o.put("results", results);
		} catch (JSONException e) {
			logger.error("Fail to specify results");
			e.printStackTrace();
		}
		return o.toString();
	}
}
