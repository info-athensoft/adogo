package com.adogo.business.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Booth;
import com.adogo.business.service.BoothService;

@Controller
public class BoothController {
		
	private BoothService boothService;
	
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
	
	@RequestMapping("/booth")
	public ModelAndView showCustProfile(
			){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findAll();
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		
		mav.setViewName("booth/allbooth");
		return mav;
	}	
}
