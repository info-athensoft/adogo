package com.adogo.business.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@RequestMapping("/test")
	public String goTest(){
		return "test";
	}
	
	@RequestMapping("/cust/{customerId}")
	public ModelAndView showCustProfile(
			@PathVariable String customerId){
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> data = mav.getModel();
		data.put("customerId", customerId);
		
		mav.setViewName("profile");
		return mav;
	}
}
