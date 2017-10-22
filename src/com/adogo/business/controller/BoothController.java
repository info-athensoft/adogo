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
	
	@RequestMapping("/ad/booths")
	public ModelAndView getAllBooth(){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findAll();
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		
		mav.setViewName("booth/booth-all");
		return mav;
	}
	
	@RequestMapping("/ad/booths/c1/{categoryNum}")
	public ModelAndView showBoothLevel1(
			@PathVariable int categoryNum){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findByClassLevel1(categoryNum);
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		data.put("boothCategoryNum", categoryNum);
		
		mav.setViewName("booth/boothbyclass");
		return mav;
	}
	
	@RequestMapping("/ad/booths/c1/{categoryNumLv1}/c2/{categoryNumLv2}")
//	/ad/booths/c1/{categoryNumLv1}/c2/{categoryNumLv2}
	public ModelAndView showBoothLevel2(
			@PathVariable int categoryNumLv1,
			@PathVariable int categoryNumLv2
			){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> booth = boothService.findByClass(categoryNumLv1,categoryNumLv2);
		//System.out.println("classNum="+classNum);
		
		Map<String,Object> data = mav.getModel();
		data.put("boothList", booth);
		data.put("boothCategoryNum", categoryNumLv2);
		
		mav.setViewName("booth/boothbyclasslv2");
		return mav;
	}
}
