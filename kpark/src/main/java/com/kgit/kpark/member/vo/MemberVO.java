package com.kgit.kpark.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("MemberVO")
public class MemberVO {
	private String user_name;
	private String user_id;
	private String user_pw;
	private String user_address;
	private String user_zip;
	private String user_phone;
	private String user_email;
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_zip() {
		return user_zip;
	}
	public void setUser_zip(String user_zip) {
		this.user_zip = user_zip;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
}
