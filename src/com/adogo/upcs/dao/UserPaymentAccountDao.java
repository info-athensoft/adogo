package com.adogo.upcs.dao;

import java.util.List;

import com.adogo.upcs.entity.UserPaymentAccount;

public interface UserPaymentAccountDao {
	
	public List<UserPaymentAccount> findAll();
	public UserPaymentAccount findById(long id);
	public UserPaymentAccount findByCustomerID(String customerID);
	public UserPaymentAccount findByUserAccountName(String userAcctName);
	
	public long create(UserPaymentAccount obj);
	public void update();
	public void delete();
	

}
