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
public class BoothController {
		
	private BoothService boothService;
	
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
	
	@RequestMapping("/booth")
	public ModelAndView showCustProfile(){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findAll();
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		
		mav.setViewName("booth/allbooth");
		return mav;
	}
	
	@RequestMapping("/category/{classNum}")
	public ModelAndView showBoothLevel1(
			@PathVariable int classNum){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findByClassLevel1(classNum);
		//System.out.println("classNum="+classNum);
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		data.put("boothCategoryNum", classNum);
		
		mav.setViewName("booth/boothbyclass");
		return mav;
	}
	
	@RequestMapping("/category/{classNum}/{classNumLv2}")
	public ModelAndView showBoothLevel2(
			@PathVariable int classNum){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findByClassLevel1(classNum);
		//System.out.println("classNum="+classNum);
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		data.put("boothCategoryNum", classNum);
		
		mav.setViewName("booth/boothbyclasslv2");
		return mav;
	}
}
