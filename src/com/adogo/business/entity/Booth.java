package com.adogo.business.entity;

public class Booth {
	private long uid;
	private long bizNo;
	private long classNum;
	private String classCode;
	private String bizName;
	private String bizDesc;
	private int boothStauts;
	private int hasAdpage;
	private int hasWebsite;
	private String locCountry;
	private String locProv;
	private String locArea;
	private String locCity;
	private String locDistriction;
	private String locName;
	private String logoCoverUrl;
	private double score;
	private String supportLang;
	private long viewedBooth;
	private long viewedHomepage;
	private long viewedProfile;
	private long numOfLiked;
	private long numOfFavourite;
	private long numOfShared;
	private String homepageUrl;
	
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public long getBizNo() {
		return bizNo;
	}
	public void setBizNo(long bizNo) {
		this.bizNo = bizNo;
	}
	public long getClassNum() {
		return classNum;
	}
	public void setClassNum(long classNum) {
		this.classNum = classNum;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
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
	public int getBoothStauts() {
		return boothStauts;
	}
	public void setBoothStauts(int boothStauts) {
		this.boothStauts = boothStauts;
	}
	public int getHasAdpage() {
		return hasAdpage;
	}
	public void setHasAdpage(int hasAdpage) {
		this.hasAdpage = hasAdpage;
	}
	public int getHasWebsite() {
		return hasWebsite;
	}
	public void setHasWebsite(int hasWebsite) {
		this.hasWebsite = hasWebsite;
	}
	
	public String getLogoCoverUrl() {
		return logoCoverUrl;
	}
	public void setLogoCoverUrl(String logoCoverUrl) {
		this.logoCoverUrl = logoCoverUrl;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getSupportLang() {
		return supportLang;
	}
	public void setSupportLang(String supportLang) {
		this.supportLang = supportLang;
	}
	public long getViewedBooth() {
		return viewedBooth;
	}
	public void setViewedBooth(long viewedBooth) {
		this.viewedBooth = viewedBooth;
	}
	public long getViewedHomepage() {
		return viewedHomepage;
	}
	public void setViewedHomepage(long viewedHomepage) {
		this.viewedHomepage = viewedHomepage;
	}
	public long getViewedProfile() {
		return viewedProfile;
	}
	public void setViewedProfile(long viewedProfile) {
		this.viewedProfile = viewedProfile;
	}
	public long getNumOfLiked() {
		return numOfLiked;
	}
	public void setNumOfLiked(long numOfLiked) {
		this.numOfLiked = numOfLiked;
	}
	public long getNumOfFavourite() {
		return numOfFavourite;
	}
	public void setNumOfFavourite(long numOfFavourite) {
		this.numOfFavourite = numOfFavourite;
	}
	public long getNumOfShared() {
		return numOfShared;
	}
	public void setNumOfShared(long numOfShared) {
		this.numOfShared = numOfShared;
	}
	@Override
	public String toString() {
		return "Booth [uid=" + uid + ", bizNo=" + bizNo + ", classNum=" + classNum + ", classCode=" + classCode
				+ ", bizName=" + bizName + ", bizDesc=" + bizDesc + ", boothStauts=" + boothStauts + ", hasAdpage="
				+ hasAdpage + ", hasWebsite=" + hasWebsite + ", locCountry=" + locCountry + ", locProv=" + locProv
				+ ", locArea=" + locArea + ", locCity=" + locCity + ", locDistriction=" + locDistriction + ", locName="
				+ locName + ", logoCoverUrl=" + logoCoverUrl + ", score=" + score + ", viewedBooth=" + viewedBooth
				+ ", viewedHomepage=" + viewedHomepage + ", viewedProfile=" + viewedProfile + ", numOfLiked="
				+ numOfLiked + ", numOfFavourite=" + numOfFavourite + ", numOfShared=" + numOfShared + "]";
	}
	public String getLocCountry() {
		return locCountry;
	}
	public void setLocCountry(String locCountry) {
		this.locCountry = locCountry;
	}
	public String getLocProv() {
		return locProv;
	}
	public void setLocProv(String locProv) {
		this.locProv = locProv;
	}
	public String getLocArea() {
		return locArea;
	}
	public void setLocArea(String locArea) {
		this.locArea = locArea;
	}
	public String getLocCity() {
		return locCity;
	}
	public void setLocCity(String locCity) {
		this.locCity = locCity;
	}
	public String getLocDistriction() {
		return locDistriction;
	}
	public void setLocDistriction(String locDistriction) {
		this.locDistriction = locDistriction;
	}
	public String getLocName() {
		return locName;
	}
	public void setLocName(String locName) {
		this.locName = locName;
	}
	public String getHomepageUrl() {
		return homepageUrl;
	}
	public void setHomepageUrl(String homepageUrl) {
		this.homepageUrl = homepageUrl;
	}
}
