package com.mybusan.team_member;

public class TMDTO {
	private int team_mem_no;
    private int team_no;
    private String user_id;
    private String team_mem_state;
    private String team_mem_adate;
	public int getTeam_mem_no() {
		return team_mem_no;
	}
	public void setTeam_mem_no(int team_mem_no) {
		this.team_mem_no = team_mem_no;
	}
	public int getTeam_no() {
		return team_no;
	}
	public void setTeam_no(int team_no) {
		this.team_no = team_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTeam_mem_state() {
		return team_mem_state;
	}
	public void setTeam_mem_state(String team_mem_state) {
		this.team_mem_state = team_mem_state;
	}
	public String getTeam_mem_adate() {
		return team_mem_adate;
	}
	public void setTeam_mem_adate(String team_mem_adate) {
		this.team_mem_adate = team_mem_adate;
	}
	@Override
	public String toString() {
		return "TMDTO [team_mem_no=" + team_mem_no + ", team_no=" + team_no + ", user_id=" + user_id
				+ ", team_mem_state=" + team_mem_state + ", team_mem_adate=" + team_mem_adate + "]";
	}
    
    
}
