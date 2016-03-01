package com.adogo.business.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Business;
import com.adogo.business.service.BusinessService;

@Controller
public class CategoryController {
	
	private BusinessService businessService;
	
	@Autowired
	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
	}
	
	@RequestMapping("/category/{categoryName}")
	public ModelAndView showCustProfile(
			@PathVariable String categoryName){
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> data = mav.getModel();
		data.put("categoryName", categoryName);
		
		List<Business> bizList = businessService.findAll();
		data.put("bizList", bizList);
		
		mav.setViewName("category-"+categoryName);
		return mav;
	}
	
	/*
	@RequestMapping("/categories")
	public ModelAndView showCustProfile(){
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> data = mav.getModel();
		
		List<Business> bizList = businessService.findAll();
		data.put("bizList", bizList);
		
		mav.setViewName("category-"+categoryName);
		return mav;
	}*/
}
