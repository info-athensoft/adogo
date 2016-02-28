package com.adogo.business.entity;

public class Business {
	
	private int bizId;
	private int bizNo;
	private String bizName;
	private String bizDesc;
	private String locationName;
	private int bizLevel;
	
	public String getBizName() {
		return bizName;
	}
	public void setBizName(String bizName) {
		this.bizName = bizName;
	}
	public String getBizDesc() {
		return bizDesc;
	}
	public void setBizDesc(String bizDesc) {
		this.bizDesc = bizDesc;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public int getBizLevel() {
		return bizLevel;
	}
	public void setBizLevel(int bizLevel) {
		this.bizLevel = bizLevel;
	}
	public int getBizId() {
		return bizId;
	}
	public void setBizId(int bizId) {
		this.bizId = bizId;
	}
	public int getBizNo() {
		return bizNo;
	}
	public void setBizNo(int bizNo) {
		this.bizNo = bizNo;
	}
	
}
