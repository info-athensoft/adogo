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
import com.adogo.uaas.exception.IncorrectUserNameOrPasswordException;
import com.adogo.uaas.exception.UserAccountExistException;
import com.adogo.uaas.service.UserService;
import com.athensoft.common.email.service.EmailService;

/**
 * For Adogo front end use
 * 
 * @author Athens
 *
 */
@Controller
public class UserController {
	
	private UserService userService;
	
	private EmailService emailService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@Autowired
	public void setEmailService(EmailService emailService){
		this.emailService = emailService;
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public ModelAndView signup(
			@RequestParam String acctName,
			@RequestParam String password,
			@RequestParam String countryCode,
			@RequestParam String provinceCode,
			@RequestParam String cityCode) {
		
		System.out.println("/signup");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		String viewName = "uaas/activate";
		
		/* data construction */
		/* status:	not completed, to refine */
		UserAccount ua = new UserAccount();
//		acctName = "test-"+acctName+"-"+Math.round(Math.random()*100000)+"@gmail.com";		//to refine
		acctName = acctName.toLowerCase();	//all to lower-case
		ua.setAcctName(acctName);
		ua.setPassword(password);
		ua.setPrimaryEmail(acctName);
		
		VisitorProfile vp = new VisitorProfile();
		vp.setCountryCode(countryCode);
		vp.setProvinceCode(provinceCode);
		vp.setCityCode(cityCode);
		
		User user = new User();
		user.setUserAccount(ua);
		user.setVisitorProfile(vp);
		
		/* business logic
		 * 		1. create user account
		 * 		2. sign in	*/
		long key = 0L;
		try{
			//1. create user account
			key = userService.createUser(user);
			
			//2. sign in
			ua = userService.getUserAccountById(key);
		}catch(UserAccountExistException ex){
			System.out.println("UserAccountExistException");
			data.put("error_msg", "ERROR: Duplicated user name.");
		}
		
		/* assemble model and view */
		data.put("userAccount", ua);		
		mav.setViewName(viewName);
		return mav;		
	}
	
	
	/**
	 * if user has not activated yet, then turn to activate page;
	 * if user has activated his account, then go on in normal flow
	 * Account status = {0: unverified, 1: active, 2: pending, 3: closed}
	 * @param acctName
	 * @param password
	 * @return
	 */
	@RequestMapping(value="/signin")
	public ModelAndView signin(
			@RequestParam String acctName,
			@RequestParam String password){
		
		System.out.println("/signin");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		String viewName = "index";
		
		/* data construction */
		UserAccount ua = new UserAccount();
		acctName = acctName.toLowerCase();	//all to lower-case
		ua.setAcctName(acctName);
		ua.setPassword(password);		//case sensitive
		
		/* business logic
		 * 		1. sign in	*/
		/* status:	not completed, to refine */
		try{
			//sign in
			ua = userService.signIn(ua);
			int acctStatus = ua.getAcctStatus();
			if(acctStatus==UserAccount.ACCOUNT_UNACTIVATED){
				System.out.println("go activate");
				viewName = "uaas/activate";
			}else if(acctStatus==UserAccount.ACCOUNT_ACTIVATED){
				System.out.println("sign in normally");
			}else{
				System.out.println("account pending or closed, please contact admin");
			}
		}catch(IncorrectUserNameOrPasswordException ex){
			ua = null;
			data.put("error_msg", "ERROR: Incorrect User name or Password");
		}
		
		/* assemble model and view */
		viewName = "redirect:/index";
		mav.setViewName(viewName);
		data.put("userAccount", ua);		
		return mav;
	}
	
	@RequestMapping(value="/signout")
	public ModelAndView signout(){
		
		System.out.println("/signin");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		String viewName = "index";
		
		/* data construction */
		UserAccount ua = null;		
		
		/* assemble model and view */
		mav.setViewName(viewName);
		data.put("userAccount", ua);		
		return mav;
	}
	
	
	@RequestMapping(value="/activaterequest",method=RequestMethod.POST,produces="application/json")
		@ResponseBody
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
			
			String activateLink = "http://www.adogo.ca/activatemail?acctId="+acctId;
//			String activateLink = "http://104.233.108.12/activatemail?acctId="+acctId;
			System.out.println("activation request sent to: activateLink");	//to log
			
			try{
	//			emailService.sendSimpleMail(activateLink);
				emailService.sendMail(activateLink, ua.getPrimaryEmail());
			}catch(Exception ex){
				System.out.println("ERROR: Activation email failed.");
				ex.printStackTrace();
			}
			
			/* assemble model and view */
			//mav.setViewName(viewName);
			data.put("activateLink",activateLink);
			data.put("userAccount", ua);
			return data;
		}

	@RequestMapping(value="/activate",produces="application/json")
	@ResponseBody
	public Map<String,Object> activateUserAccount(
			@RequestParam long acctId){
		
		System.out.println("/activate");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		
		/* data construction */
		UserAccount ua = new UserAccount();	
		ua.setAcctId(acctId);
		
		/* business logic
		 * 		1. activate	*/
		ua = userService.activateAccount(ua);
		System.out.println("account activated");	//to log
		
		/* assemble model and view */
		data.put("info_msg","account activated");
		data.put("userAccount", ua);
		return data;
	}
	
	@RequestMapping(value="/activatemail")
	public ModelAndView activateUserAccountByMail(
			@RequestParam long acctId){
		
		System.out.println("/activatemail");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		String viewName = "uaas/activate-result";
		
		/* data construction */
		UserAccount ua = new UserAccount();	
		ua.setAcctId(acctId);
		
		/* business logic
		 * 		1. activate	*/
		ua = userService.activateAccount(ua);
		System.out.println("account activated");	//to log
		
		/* assemble model and view */
		mav.setViewName(viewName);
		data.put("activate_msg","account activated");
		data.put("userAccount", ua);
		return mav;
	}
	
	
	/*
	@RequestMapping(value="/signin",method=RequestMethod.GET,produces="application/json")
	@ResponseBody
	public Map<String,Object> signin(
			@RequestParam String acctName,
			@RequestParam String password){
		System.out.println("/signin");
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		
		UserAccount ua = new UserAccount();
		ua.setAcctName(acctName);
		ua.setPassword(password);
		
		//query from userAccount
		ua = userService.signIn(ua);
		System.out.println("login in user = "+ua);
		long key = 0L;
		
		try{
			if(ua!=null){
				key = ua.getAcctId();
				//data.put("userAccount", ua);
				data.put("userAccountKey", key);
			}
		}catch(IncorrectUserNameOrPasswordException ex){
			System.out.println("IncorrectUserNameOrPasswordException");
			data.put("error_msg", "ERROR: Incorrect User name or Password");
		}
		
		return data;
	}
	*/
	
	
	/*
	@RequestMapping(value="/signup",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> signup(
			@RequestParam String acctName,
			@RequestParam String password,
			@RequestParam String countryCode,
			@RequestParam String provinceCode,
			@RequestParam String cityCode) {
		
		System.out.println("/signup");		
		
		UserAccount ua = new UserAccount();
		//test
		acctName = "test-"+acctName+"-"+Math.round(Math.random()*100000)+"@gmail.com";
		ua.setAcctName(acctName);
		ua.setPassword(password);
		ua.setPrimaryEmail(acctName);
		
		VisitorProfile vp = new VisitorProfile();
		vp.setCountryCode(countryCode);
		vp.setProvinceCode(provinceCode);
		vp.setCityCode(cityCode);
		
		User user = new User();
		user.setUserAccount(ua);
		user.setVisitorProfile(vp);
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		
		//create user account
		long key = 0L;
		String errorMsg = "";
		try{
			key = userService.createUser(user);
		}catch(UserAccountExistException ex){
			System.out.println("UserAccountExistException");
			errorMsg = "ERROR: Duplicated user name.";
			data.put("error_msg", errorMsg);
		}
		
		data.put("userAccountKey", key);
		
		return data;		
	}
	 */
}
