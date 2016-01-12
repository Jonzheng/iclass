package org.zyh.iclass.model;

public class UserDTO {
	private String mail;
	private int email;
	private int token;
	private int time;
	private int status;
	
	public int getEmail() {
		return email;
	}
	public void setEmail(int email) {
		this.email = email;
	}
	public int getToken() {
		return token;
	}
	public void setToken(int token) {
		this.token = token;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public UserDTO() {
		super();
		this.mail = "0";
		this.email = 0;
		this.status = 0;
		this.time = 0;
		this.token = 0;
	}
	
	
}
