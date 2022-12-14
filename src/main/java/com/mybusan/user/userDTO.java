package com.mybusan.user;

import org.springframework.web.multipart.MultipartFile;

public class userDTO {
    private String user_id;
    private String user_pw;
    private String user_name;
    private String user_email;
    private String user_phone;
    private String user_gender;
    private String user_prop;
    private MultipartFile prop_file;
    private char user_mailox;
    private int user_point;

    public userDTO() {
		// TODO Auto-generated constructor stub
	}
    
    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_pw() {
        return user_pw;
    }

    public void setUser_pw(String user_pw) {
        this.user_pw = user_pw;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_gender() {
        return user_gender;
    }

    public void setUser_gender(String user_gender) {
        this.user_gender = user_gender;
    }

    public String getUser_prop() {
        return user_prop;
    }

    public void setUser_prop(String user_prop) {
        this.user_prop = user_prop;
    }

    public MultipartFile getProp_file() {
        return prop_file;
    }

    public void setProp_file(MultipartFile prop_file) {
        this.prop_file = prop_file;
    }

    public char getUser_mailox() {
        return user_mailox;
    }

    public void setUser_mailox(char user_mailox) {
        this.user_mailox = user_mailox;
    }

    public int getUser_point() {
        return user_point;
    }

    public void setUser_point(int user_point) {
        this.user_point = user_point;
    }
}
