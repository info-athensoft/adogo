package com.adogo.uaas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.uaas.dao.UserAccountDao;
import com.adogo.uaas.dao.VisitorProfileDao;
import com.adogo.uaas.entity.User;
import com.adogo.uaas.entity.UserAccount;
import com.adogo.uaas.entity.VisitorProfile;
import com.adogo.uaas.exception.IncorrectUserNameOrPasswordException;
import com.adogo.uaas.exception.InvalidKeyValueException;
import com.adogo.uaas.exception.UserAccountExistException;

@Service
public class UserService {
	
	private UserAccountDao userAccoutDao;
	private VisitorProfileDao visitorPorfileDao;
	
	@Autowired
	@Qualifier("userAccountDaoParamImpl")
	public void setUserAccoutDao(UserAccountDao userAccoutDao) {
		this.userAccoutDao = userAccoutDao;
	}	
	
	@Autowired
	@Qualifier("visitorProfileDaoParamImpl")
	public void setVisitorProfileDao(VisitorProfileDao visitorPorfileDao) {
		this.visitorPorfileDao = visitorPorfileDao;
	}
	
	
	/**
	 * Visitor registration
	 * register event flow
	 * @param user
	 * @throws org.springframework.dao.DuplicateKeyException
	 */
	public long createUser(User user){		
		final long INVALID_KEY = -1;
		long key_userId = 0L;
		
		try{
			//create userAccount
			key_userId = userAccoutDao.create(user.getUserAccount());
				System.out.println("UserService:  key_userId="+key_userId);

			//key >0 means a valid user account has been created		
			if(key_userId>0){
				//create visitor
				VisitorProfile vp = user.getVisitorProfile();
				vp.setUserId(key_userId);
				visitorPorfileDao.create(vp);
			}else if(key_userId<=0){
				throw new InvalidKeyValueException();
			}
		}catch(org.springframework.dao.DuplicateKeyException ex){
			System.out.println("UserService:  DuplicateKeyException  key_userId="+key_userId);
			key_userId = INVALID_KEY;
			throw new UserAccountExistException();
		}
		return key_userId;
	}
	
	public UserAccount signIn(UserAccount ua){
		UserAccount userAccount = userAccoutDao.querySignin(ua);	
		if(userAccount == null){
			throw new IncorrectUserNameOrPasswordException();
		}
		return userAccount;
	}
	
	public UserAccount activateAccount(UserAccount userAccount){
		userAccount.setAcctStatus(UserAccount.ACCOUNT_ACTIVATED);
		userAccoutDao.activateAccount(userAccount);
		
		UserAccount ua = userAccoutDao.findById(userAccount.getAcctId());
		return ua;
	}
	
	/**
	 * get userAccount by ID
	 * @param acctId
	 * @return
	 */
	public UserAccount getUserAccountById(long acctId){
		UserAccount ua = null;
		try{
			ua = userAccoutDao.findById(acctId);
		}catch(UserAccountExistException ex){
			System.out.println("UserAccountExistException");
		}
		return ua;
	}
	
}
