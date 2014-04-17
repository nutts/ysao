package com.ysao.dbo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Aunt {
	
	static final Logger logger = LogManager.getLogger(Aunt.class.getName());
	private int id;  //id
	private String name;  //名字
	private int birth_year; //出身年；用于计算年龄；
	private int jiguan; //籍贯
	private String show_pic;  //阿姨的展示图片
	private String profile_pic;  //阿姨的图片
	private int price;  //价格
	private double pinfen; //评分
	private int experience; //做过几家
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}
	public int getJiguan() {
		return jiguan;
	}
	public void setJiguan(int jiguan) {
		this.jiguan = jiguan;
	}
	public String getShow_pic() {
		return show_pic;
	}
	public void setShow_pic(String show_pic) {
		this.show_pic = show_pic;
	}
	public String getProfile_pic() {
		return profile_pic;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getPinfen() {
		return pinfen;
	}
	public void setPinfen(double pinfen) {
		this.pinfen = pinfen;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	
	public String toString(){
		return getId() + "," 
	         + getName() + "," 
			 + getBirth_year() + "," 
	         + getExperience() + ","
	         + getJiguan() + ","
	         + getPinfen() + ","
	         + getPrice() + ",";
	         
	}
	
	
	public String toHtmlSearchItem(){
		StringBuilder sb = new StringBuilder();
		sb.append("<li class='search-result'>");
		sb.append("<div class='listing'>");
		sb.append("<div class='listing-img media-photo'>");
   	    sb.append("<a class='wish_list_button'" +  
				" rel='tooltip' data-tooltip-position='right' title='保存此房源以便以后评价。'>");
		sb.append("<i class='icon icon-heart'></i>");
		sb.append("</a>");

		sb.append("<div class='listing-img-container'>");
		//sb.append("<div style='width:405px;height:271px'>");
			sb.append("<img ");
		//sb.append("src='images/1d74851c_original.jpg'");
				sb.append(" src='https://a2.muscache.com/ic/pictures/23412421/1d74851c_original.jpg?interpolation=progressive-bicubic&size=x_medium&output-format=jpg&output-quality=85&wm=v'");
		//sb.append(" data-current='0' ");
		//sb.append(" data-urls='[&quot;images/1d74851c_original.jpg&quot;]' />");
				sb.append(" />");	
		//sb.append("<img src='images/016ed0c9_original.jpg' />");
		
	    sb.append("</div>");
	    
	    //the image slide show 
	   // sb.append("<a class='target-details listing-slideshow-target block-link' href='aunt/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMx'></a>");
	    sb.append("<a class='listing-name media-caption h4' href='/rooms/44054?s=PgEd'>");
        sb.append("3BR Apt in Central Beijing (CBD)");
        sb.append("</a>");
        
        sb.append("<i class='icon icon-comment listing-review-count' data-behavior='tooltip' title='Reviews of this listing'>");

        sb.append("<span class='count'>19</span>");

        sb.append("</i>");
      
        
	    sb.append("</div>");
		
	    // the footer;
	    
		sb.append("<div class='listing-footer clearfix'>");

		sb.append("<a href='users/show/3630863' class='media-link media-photo host-img'>");
		sb.append("<img src='profile_pic/original.jpg' />");
		sb.append("</a> <a class='listing-quick-info' href='aunt/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ' " +
			" title='私人房间 | 安贞（Ahn Jung）, 北京'> <span class='listing-room-type'> " +
				"私人房间<br /> 安贞（Ahn Jung）,&nbsp;北京");
		sb.append("</span>");
		sb.append("</a> <a class='listing-price' href='/rooms/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ'> " +
			"<span class='shift text-special price'> <span " +
				" class='currency'>$</span> <span class='h2 price-amount'>33</span> <span class='currency'> SGD</span> ");
		sb.append("</span> <span class='price-sub'> 每月 </span>");
		sb.append("</a>");

		sb.append("</div>");
	    
	    sb.append("</div>");
	    sb.append("</li>");
	    
	    logger.trace("single aunt string: " + sb.toString());
	    return sb.toString();
		
	}
	
	
}
