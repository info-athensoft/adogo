package com.adogo.uaas.entity;

public class VisitorProfile {
	private long uid;
//	private String acctName;
	private String firstName;
	private String lastName;
	private String nickName;
	private String countryCode;
	private String provinceCode;
	private String cityCode;
	private String postalCode;
	private int gender;		//1:male, 0:female, 2:unknown
	private int birthYear;
	private int birthMonth;
	private int birthDay;
	private int phoneCountryCode;
	private int phoneNum;
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
//	public String getAcctName() {
//		return acctName;
//	}
//	public void setAcctName(String acctName) {
//		this.acctName = acctName;
//	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(int birthYear) {
		this.birthYear = birthYear;
	}
	public int getBirthMonth() {
		return birthMonth;
	}
	public void setBirthMonth(int birthMonth) {
		this.birthMonth = birthMonth;
	}
	public int getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(int birthDay) {
		this.birthDay = birthDay;
	}
	public int getPhoneCountryCode() {
		return phoneCountryCode;
	}
	public void setPhoneCountryCode(int phoneCountryCode) {
		this.phoneCountryCode = phoneCountryCode;
	}
	public int getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(int phoneNum) {
		this.phoneNum = phoneNum;
	}
	@Override
	public String toString() {
		return "VisitorProfile [uid=" + uid + ", acctName=" + ", firstName=" + firstName + ", lastName="
				+ lastName + ", nickName=" + nickName + ", countryCode=" + countryCode + ", provinceCode="
				+ provinceCode + ", cityCode=" + cityCode + ", postalCode=" + postalCode + ", gender=" + gender
				+ ", birthYear=" + birthYear + ", birthMonth=" + birthMonth + ", birthDay=" + birthDay
				+ ", phoneCountryCode=" + phoneCountryCode + ", phoneNum=" + phoneNum + "]";
	}
		
}
