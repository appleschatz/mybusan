package com.mybusan.qna;

public class QnADTO {
	private String q_no;
	private String user_id;
	private String q_address;
	private String q_contents;
	private String q_filename;
	private String q_filepath;
	
	
	public String getQ_no() {
		return q_no;
	}
	
	public String getQ_address() {
		return q_address;
	}

	public void setQ_address(String q_address) {
		this.q_address = q_address;
	}

	public void setQ_no(String q_no) {
		this.q_no = q_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getQ_contents() {
		return q_contents;
	}
	public void setQ_contents(String q_contents) {
		this.q_contents = q_contents;
	}
	public String getQ_filename() {
		return q_filename;
	}
	public void setQ_filename(String q_filename) {
		this.q_filename = q_filename;
	}
	public String getQ_filepath() {
		return q_filepath;
	}
	public void setQ_filepath(String q_filepath) {
		this.q_filepath = q_filepath;
	}
	@Override
	public String toString() {
		return "QnADTO [q_no=" + q_no + ", user_id=" + user_id + ", q_address=" + q_address + ", q_contents="
				+ q_contents + ", q_filename=" + q_filename + ", q_filepath=" + q_filepath + "]";
	}
	
}


