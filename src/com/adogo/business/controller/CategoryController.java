package com.adogo.business.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Booth;
import com.adogo.business.service.BoothService;

@Controller
public class CategoryController {
	
	private BoothService boothService;
	
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
	
	
	@RequestMapping("/category/name/{categoryName}")
	public ModelAndView showBooth(
			@PathVariable String categoryName){
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> data = mav.getModel();
		data.put("categoryName", categoryName);
		
		List<Booth> boothList = boothService.findAll();
		data.put("boothList", boothList);
		
		mav.setViewName("category-"+categoryName);
		return mav;
	}
	

}
