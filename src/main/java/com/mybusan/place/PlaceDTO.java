package com.mybusan.place;

public class PlaceDTO {
	private int p_code;
	private String p_name;
	private String p_category;
	private String p_sido;
	private String p_sigungu;
	private String p_umd;
	private String p_ri;
	private String p_address;
	private Float p_lng;
	private Float p_lat;
	
	
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public String getP_sido() {
		return p_sido;
	}
	public void setP_sido(String p_sido) {
		this.p_sido = p_sido;
	}
	public String getP_sigungu() {
		return p_sigungu;
	}
	public void setP_sigungu(String p_sigungu) {
		this.p_sigungu = p_sigungu;
	}
	public String getP_umd() {
		return p_umd;
	}
	public void setP_umd(String p_umd) {
		this.p_umd = p_umd;
	}
	public String getP_ri() {
		return p_ri;
	}
	public void setP_ri(String p_ri) {
		this.p_ri = p_ri;
	}
	public String getP_address() {
		return p_address;
	}
	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
	public Float getP_lng() {
		return p_lng;
	}
	public void setP_lng(Float p_lng) {
		this.p_lng = p_lng;
	}
	public Float getP_lat() {
		return p_lat;
	}
	public void setP_lat(Float p_lat) {
		this.p_lat = p_lat;
	}
	@Override
	public String toString() {
		return "PlaceDTO [p_code=" + p_code + ", p_name=" + p_name + ", p_category=" + p_category + ", p_sido=" + p_sido
				+ ", p_sigungu=" + p_sigungu + ", p_umd=" + p_umd + ", p_ri=" + p_ri + ", p_address=" + p_address
				+ ", p_lng=" + p_lng + ", p_lat=" + p_lat + "]";
	}
	
	
}
