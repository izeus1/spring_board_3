package com.javalec.mysite.vo;

public class UsersVO {
	private String id; 
	private String name; 
	private String role; 
	private String password;
	
//=======================================	
// 
//	ID VARCHAR(20) NOT NULL, /* ID */
//	NAME VARCHAR2(20), /* NAME */
//	ROLE VARCHAR(10), /* ROLE */
//	PASSWORD VARCHAR(20) /* PASSWORD */
//	
//=======================================	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UsersVO [id=" + id + ", name=" + name + ", role=" + role + ", password=" + password + "]";
	} 

}
