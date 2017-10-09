package com.adogo.upcs.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.uaas.entity.UserAccount;
import com.adogo.uaas.service.UserAccountService;

@Controller
public class UpcsController {
		
	private UserAccountService userAccountService;
	
	@Autowired
	public void setUserAccountService(UserAccountService userAccountService) {
		this.userAccountService = userAccountService;
	}
	
	@RequestMapping("/myacct")
	public ModelAndView showUserProfileAll(){
		ModelAndView mav = new ModelAndView();
		
		List<UserAccount> userAccountList = userAccountService.getUserAccountAll();
		
		Map<String,Object> data = mav.getModel();
		data.put("userAccountList", userAccountList);
		
		mav.setViewName("upcs/myacct-profile-all-test");
		return mav;
	}
	
	@RequestMapping("/myacct/{acctId}")
	public ModelAndView showUserProfile(@PathVariable long acctId){
		ModelAndView mav = new ModelAndView();
		
		UserAccount userAccount = userAccountService.getUserAccount(acctId);
		
		Map<String,Object> data = mav.getModel();
		data.put("userAccount", userAccount);
		
		mav.setViewName("upcs/myacct-profile");
		return mav;
	}
	
	/*
	@RequestMapping("/myacct/recharge")
	public ModelAndView goRecharge(){
		ModelAndView mav = new ModelAndView();
		
		List<UserAccount> userAccountList = userAccountService.getUserAccountAll();
		
		Map<String,Object> data = mav.getModel();
		data.put("userAccountList", userAccountList);
		
		mav.setViewName("upcs/myacct-recharge");
		return mav;
	}
	*/
	
	

}
