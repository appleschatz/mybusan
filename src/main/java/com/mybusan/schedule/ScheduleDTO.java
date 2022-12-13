package com.mybusan.schedule;

public class ScheduleDTO {
		private int s_no;
	    private String user_id;
	    private String s_title;
	    private String  s_content;
	    private String  s_rdate;
	    private String s_startdate;
	    private String s_enddate;
	   
	    public ScheduleDTO() {
			// TODO Auto-generated constructor stub
		}

		@Override
		public String toString() {
			return "ScheduleDTO [s_no=" + s_no + ", user_id=" + user_id + ", s_title=" + s_title + ", s_content="
					+ s_content + ", s_rdate=" + s_rdate + ", s_startdate=" + s_startdate + ", s_enddate=" + s_enddate
					+ "]";
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

		public String getS_title() {
			return s_title;
		}

		public void setS_title(String s_title) {
			this.s_title = s_title;
		}

		public String getS_content() {
			return s_content;
		}

		public void setS_content(String s_content) {
			this.s_content = s_content;
		}

		public String getS_rdate() {
			return s_rdate;
		}

		public void setS_rdate(String s_rdate) {
			this.s_rdate = s_rdate;
		}

		public String getS_startdate() {
			return s_startdate;
		}

		public void setS_startdate(String s_startdate) {
			this.s_startdate = s_startdate;
		}

		public String getS_enddate() {
			return s_enddate;
		}

		public void setS_enddate(String s_enddate) {
			this.s_enddate = s_enddate;
		}
	    
	    
		
}
