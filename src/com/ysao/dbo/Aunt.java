package com.ysao.dbo;

public class Aunt {

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
		sb.append("<li class=\"search-result\">");
		sb.append("<div data-name=\"" + this.getName() + "\"" + 
				" data-url=\"/aunts/show.jsp?aid=" + this.getId() + 
				" data-user=\"" + this.getId()  + "\" class=\"listing\">");
		sb.append("<div class=\"listing-img media-photo\">");
		sb.append("<a class=\"wish_list_button\"" +  
				" rel=\"tooltip\" data-tooltip-position=\"right\" title=\"保存此房源以便以后评价。\">");
		sb.append("<i class=\"icon icon-heart\"></i>");
		sb.append("</a>");

		sb.append("<div class=\"listing-img-container\">");
		sb.append("<img src=\"images/016ed0c9_original.jpg\"" +
			" data-current=\"0\" " +
			" data-urls=\"https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg\"/>");
	    sb.append("</div>");
	    sb.append("</div>");
	    sb.append("</li>");
	    
	    return sb.toString();
		
	}
	
	
}
