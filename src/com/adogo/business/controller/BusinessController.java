package com.adogo.business.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Business;
import com.adogo.business.service.BusinessService;

@Controller
public class BusinessController {
	
	
	private BusinessService businessService;
	
	@Autowired
	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
	}
	
	@RequestMapping("/biz/{bizNo}")
	public ModelAndView showCustProfile(
			@PathVariable int bizNo){
		ModelAndView mav = new ModelAndView();
		
		Business biz = businessService.findByBizNo(bizNo);
		
		Map<String,Object> data = mav.getModel();
		data.put("business", biz);
		
		mav.setViewName("profile");
		return mav;
	}



	
}
