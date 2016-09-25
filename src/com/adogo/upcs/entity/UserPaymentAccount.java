package com.adogo.upcs.entity;

public class UserPaymentAccount {
	private long  uid;
	private String userAcct;
	private String customerId;
	private String firstName;
	private String lastName;
	private String email;
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getUserAcct() {
		return userAcct;
	}
	public void setUserAcct(String userAcct) {
		this.userAcct = userAcct;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "UserPaymentAccount [uid=" + uid + ", userAcct=" + userAcct
				+ ", customerId=" + customerId + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", email=" + email + "]";
	}
	
	
	
}
