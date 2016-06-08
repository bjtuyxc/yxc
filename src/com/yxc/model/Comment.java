package com.yxc.model;

import java.sql.Date;

public class Comment {
	private String email;
	private String content;
	private String vedioID;
	private String time;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getvedioID() {
		return vedioID;
	}
	public void setvedioID(String vedioID) {
		this.vedioID = vedioID;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	} 
}
