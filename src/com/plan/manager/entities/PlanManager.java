package com.plan.manager.entities;

public class PlanManager {
	private String name;
	private String email;
	private String mobile;
	private String plan;
	public PlanManager(String name, String email, String mobile, String plan) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.plan = plan;
	}
	public PlanManager() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	
	

}
