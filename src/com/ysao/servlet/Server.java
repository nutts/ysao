package com.ysao.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringEscapeUtils;
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
		response.setContentType("text/json;charset=utf-8");
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
			o.put("pagination_footer", Server.getPagination());
			o.put("results_count_string",Server.getResultsCount());
			o.put("visible_results_count", 22);
			
		} catch (JSONException e) {
			logger.error("Fail to specify results");
			e.printStackTrace();
		}
		logger.trace(o.toString());
		//String re = "{\"results\":\"" + results + "\"}";
		//return re;
		return o.toString(); //json will espace </li> to <\/li>;
	}
	
	private static String getResultsCount(){
		logger.debug("中文支持么？");
		System.out.println("中文还");
		return "总共 14 位";
		
	}
	private static String getPagination(){
		StringBuilder sb = new StringBuilder();
		sb.append("<div class='results-footer'>" +

		"<div class='page-divider'></div>" +

		"<div class='pagination-buttons-container'>" +
			"<div class='results_count'>" +
				"<h4>50个出租房源的1 – 18</h4>" +
			"</div>" +
			"<div class='pagination'>"+
				"<ul class='list-unstyled'>" +
					"<li class='active'><a rel='start' target='1'" +
						" href='/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=1&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11'>1</a></li>" +
					"<li><a rel='next' target='2'" +
						" href='/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=2&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11'>2</a></li>" +
					"<li><a target='3' " +
						"href='/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=3&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11'>3</a></li>" +
					"<li class='gap'><span class='gap'>&hellip;</span></li>" +
					"<li><a target='29' " +
						"href='/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=29&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11'>29</a></li>" +
					"<li class='next next_page'><a target='2' rel='next' "+
						"href='/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=2&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11'>></a></li>" +
				"</ul>" +
			"</div>" +
		"</div>");
		sb.append("<div class=\"breadcrumbs\" itemprop=\"breadcrumb\">" +
			"<span itemscope itemtype=\"http://data-vocabulary.org/Breadcrumb\">" +
					"<a href=\"/s/%E4%B8%AD%E5%9B%BD\" itemprop=\"url\"> <span "+ 
							"itemprop=\"title\">中国</span>" +
					"</a> <i class=\"icon icon-chevron-right breadcrumb-spacer\"></i>" +
					"</span> <span itemscope itemtype=\"http://data-vocabulary.org/Breadcrumb\">" +
						"<a href=\"/s/%E5%8C%97%E4%BA%AC--%E4%B8%AD%E5%9B%BD\" itemprop=\"url\">" +
							"<span itemprop=\"title\">北京</span>" +
					"</a> <i class='icon icon-chevron-right breadcrumb-spacer'></i>" +
					"</span> <span>北京</span>" +
				"</div>");
		sb.append("</div>");
		return sb.toString();
		
	}
}
