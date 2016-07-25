package com.adogo.upcs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.upcs.dao.UserPaymentAccountDao;
import com.adogo.upcs.entity.UserPaymentAccount;

@Service
public class UserPaymentAccountService {

	private UserPaymentAccountDao userPaymentAccountDao;
	
	@Autowired
	@Qualifier("userPaymentAccountDaoParamImpl")
	public void setUserPaymentAccountDao(UserPaymentAccountDao userPaymentAccountDao) {
		this.userPaymentAccountDao = userPaymentAccountDao;
	}
	
	//save with a readable name for business method
	/**
	 * @param userPaymentAccount
	 */
	public void createCustomerPaymentAccount(UserPaymentAccount userPaymentAccount) {
		long id  = userPaymentAccountDao.create(userPaymentAccount);
		System.out.println("Customer created, uid = "+id);
	}
}
