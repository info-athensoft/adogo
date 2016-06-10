package com.adogo.uaas.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.uaas.entity.UserAccount;

@Controller
public class UaasController {
	
//	@RequestMapping("/")
//	public String goIndex(){
//		return "uaas/index";
//	}
//	
//	@RequestMapping("/index")
//	public String goTest(){
//		return "uaas/index";
//	}
	
	@RequestMapping("/gosignup")
	public String goSignup(){
		return "uaas/signup";
	}
	
	@RequestMapping("/gosignin")
	public String goSignin(){
		return "uaas/signin";
	}
	
	@RequestMapping("/goactivate")
	public String goActivate(){
		return "uaas/activate";
	}
	
	@RequestMapping(value="/goactivateemail")
	public ModelAndView goActivateRequest(
			@RequestParam String activateLink,
			@RequestParam String acctId){
		
		System.out.println("/goactivateemail");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		String viewName = "uaas/activate-email";

		
		/* assemble model and view */
		mav.setViewName(viewName);
		data.put("activateLink",activateLink);
		data.put("acctId",acctId);
		return mav;
	}
	
	@RequestMapping(value="/goactivateresult")
	public ModelAndView goActivateResult(
			@RequestParam String resultMsg){
		
		System.out.println("/goactivateresult");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		String viewName = "uaas/activate-result";

		mav.setViewName(viewName);
		data.put("activate_msg",resultMsg);
		return mav;
	}
}
