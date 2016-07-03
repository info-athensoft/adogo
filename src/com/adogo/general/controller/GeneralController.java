package com.adogo.general.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Booth;
import com.adogo.business.service.BoothService;

@Controller
public class GeneralController {
	
	private BoothService boothService;
	
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
/*	
	@RequestMapping("/")
	public String goIndex(){
		return "index";
	}
*/	
	@RequestMapping("/")
	public ModelAndView goIndex(){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> boothNewBrands = boothService.findNewBrands();
		List<Booth> boothWeeklyFeatured = boothService.findWeeklyFeatured();
		List<Booth> boothMonthlyStars = boothService.findMonthlyStars();
		List<Booth> boothPopular = boothService.findPopular();
		
		Map<String,Object> data = mav.getModel();
		data.put("boothNewBrandsList", boothNewBrands);
		data.put("boothWeeklyFeaturedList", boothWeeklyFeatured);
		data.put("boothMonthlyStarsList", boothMonthlyStars);
		data.put("boothPopularList", boothPopular);
		
		mav.setViewName("index");
		return mav;
	}
/*	
	@RequestMapping("/index")
	public String goIndex2(){
		return "index";
	}
*/
	@RequestMapping("/index")
	public ModelAndView goIndex2(){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> boothNewBrands = boothService.findNewBrands();
		List<Booth> boothWeeklyFeatured = boothService.findWeeklyFeatured();
		List<Booth> boothMonthlyStars = boothService.findMonthlyStars();
		List<Booth> boothPopular = boothService.findPopular();
		
		Map<String,Object> data = mav.getModel();
		data.put("boothNewBrandsList", boothNewBrands);
		data.put("boothWeeklyFeaturedList", boothWeeklyFeatured);
		data.put("boothMonthlyStarsList", boothMonthlyStars);
		data.put("boothPopularList", boothPopular);
		
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/about")
	public String goAbout(){
		return "about";
	}
	
	@RequestMapping("/faq")
	public String goFaq(){
		return "faq";
	}
	
	@RequestMapping("/about/ch")
	public String goAboutCH(){
		return "about-ch";
	}
	
	
}
