package com.adogo.business.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Booth;
import com.adogo.business.service.BoothService;
import com.adogo.business.service.BusinessService;

@Controller
public class BusinessController {
		
	private BusinessService businessService;
	
	@Autowired
	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
	}
	
	private BoothService boothService;
	
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
	
	@RequestMapping("/ad/boothprofile/{bizNo}")
	public ModelAndView getBoothProfile(
			@PathVariable int bizNo){
		ModelAndView mav = new ModelAndView();
		
		Booth boothProfile = boothService.findByBizNo(bizNo);
		
		Map<String,Object> data = mav.getModel();
		data.put("booth", boothProfile);
		
		mav.setViewName("booth/booth-profile");
		return mav;
	}
	
	
}
