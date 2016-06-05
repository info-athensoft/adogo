package com.adogo.uaas.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.uaas.entity.User;
import com.adogo.uaas.entity.UserAccount;
import com.adogo.uaas.entity.VisitorProfile;
import com.adogo.uaas.exception.NoSuchUserAccountException;
import com.adogo.uaas.service.UserService;

@Controller
public class TestUserController {
	private UserService userService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	
	@RequestMapping("/testcreateuser")
	public ModelAndView testCreateUser(){
				
		User user = new User();
		
		UserAccount ua = new UserAccount();
		String acctName = "testuser@163.com"+Math.round(Math.random()*100000);
		ua.setAcctName(acctName);
		ua.setPrimaryEmail(acctName);
		ua.setSecureEmail(acctName);
		ua.setPassword("qwe123");
		
		VisitorProfile vp = new VisitorProfile();
		vp.setFirstName("qian");
		vp.setLastName("zhang");
		vp.setNickName("athens");
		vp.setCountryCode("CA");
		vp.setProvinceCode("QC");
		vp.setCityCode("Montreal");
		vp.setPostalCode("H4B1N2");		
		
		user.setUserAccount(ua);
		user.setVisitorProfile(vp);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("uaas/useracct");
		Map<String,Object> data = mav.getModel();
		
		try{
			userService.createUser(user);
		}catch(org.springframework.dao.DuplicateKeyException ex){
			System.out.println("org.springframework.dao.DuplicateKeyException");
			data.put("error_msg", "ERROR: Duplicated user name.");		
			mav.setViewName("uaas/testUser");
		}catch(NoSuchUserAccountException ex2){
			System.out.println("NoSuchUserAccountException");
//			data.put("error_msg", "ERROR: No such user account.");			
			data.put("error_msg", "ERROR: No such user account.");
			mav.setViewName("uaas/testUser");
		}finally{
			
		}
		
		return mav;
	}
	
	@RequestMapping("/testresetpwd")
	public ModelAndView testResetPassword(){
		//User object with old password
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("uaas/useracct");
		Map<String,Object> data = mav.getModel();
		
		return mav;
	}
	
	//@RequestMapping(value="/activaterequest",method=RequestMethod.POST,produces="application/json")
	//@ResponseBody
	public Map<String,Object> activateRequest(
			@RequestParam long acctId,
			@RequestParam String email){
		
		System.out.println("/activaterequest");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		//String viewName = "uaas/activate-email";
		
		/* data construction */
		UserAccount ua = new UserAccount();	
		ua.setAcctId(acctId);
		ua.setPrimaryEmail(email);
		
		/* business logic
		 * 		1. construct activate link string	
		* 		2. send email with activate request	*/
		//to do list
		//1. url encode
		//2. encrypt
		
		String activateLink = "http://localhost:8080/prototype_uaas/activatemail?acctId="+acctId;
		System.out.println("activation request sent to: activateLink");	//to log
		
		
		
		
		/* assemble model and view */
		//mav.setViewName(viewName);
		data.put("activateLink",activateLink);
		data.put("userAccount", ua);
		return data;
	}
}
