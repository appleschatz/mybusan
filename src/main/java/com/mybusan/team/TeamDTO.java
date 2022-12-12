package com.mybusan.team;

public class TeamDTO {
		private int team_no;
	    private int s_no;
	    private String user_id;
	    private String team_name;
	    private String team_intro;
	    private String team_interest;
	    private int team_number;
	    private String team_sdate;
	    private String team_edate;
	    private String team_state;
	    
		public int getTeam_no() {
			return team_no;
		}
		public void setTeam_no(int team_no) {
			this.team_no = team_no;
		}
		public int getS_no() {
			return s_no;
		}
		public void setS_no(int s_no) {
			this.s_no = s_no;
		}
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		public String getTeam_name() {
			return team_name;
		}
		public void setTeam_name(String team_name) {
			this.team_name = team_name;
		}
		public String getTeam_intro() {
			return team_intro;
		}
		public void setTeam_intro(String team_intro) {
			this.team_intro = team_intro;
		}
		public String getTeam_interest() {
			return team_interest;
		}
		public void setTeam_interest(String team_interest) {
			this.team_interest = team_interest;
		}
		public int getTeam_number() {
			return team_number;
		}
		public void setTeam_number(int team_number) {
			this.team_number = team_number;
		}
		public String getTeam_sdate() {
			return team_sdate;
		}
		public void setTeam_sdate(String team_sdate) {
			this.team_sdate = team_sdate;
		}
		public String getTeam_edate() {
			return team_edate;
		}
		public void setTeam_edate(String team_edate) {
			this.team_edate = team_edate;
		}
		public String getTeam_state() {
			return team_state;
		}
		public void setTeam_state(String team_state) {
			this.team_state = team_state;
		}
		@Override
		public String toString() {
			return "TeamDTO [team_no=" + team_no + ", s_no=" + s_no + ", user_id=" + user_id + ", tema_name="
					+ team_name + ", team_intro=" + team_intro + ", team_interest=" + team_interest + ", team_number="
					+ team_number + ", team_sdate=" + team_sdate + ", team_edate=" + team_edate + ", team_state="
					+ team_state + "]";
		}
}
