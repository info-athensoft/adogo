package com.adogo.uaas.entity;

public class User {
	private UserAccount userAccount;
	private VisitorProfile visitorProfile;
	//private Merchant merchant;
	//private Visitor visitor;
	
	public void register(){
		
	}
	
	public void resetPassword(){
		
	}

	public void applyMerchant(int merchantType){
		
	}

	public UserAccount getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(UserAccount userAccount) {
		this.userAccount = userAccount;
	}

	public VisitorProfile getVisitorProfile() {
		return visitorProfile;
	}

	public void setVisitorProfile(VisitorProfile visitorProfile) {
		this.visitorProfile = visitorProfile;
	}
	
	
	
}
