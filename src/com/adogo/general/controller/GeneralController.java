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
		//List<Booth> boothPopular = boothService.findPopular();
		List<Booth> boothPopularShopwise = boothService.findPopular(1);
		List<Booth> boothPopularFooddrink = boothService.findPopular(2);
		List<Booth> boothPopularLifeService = boothService.findPopular(3);
		List<Booth> boothPopularProService = boothService.findPopular(4);
		List<Booth> boothPopularEdu = boothService.findPopular(5);
		List<Booth> boothPopularTour = boothService.findPopular(6);
		List<Booth> boothPopularTransport = boothService.findPopular(7);
		List<Booth> boothPopularSport = boothService.findPopular(8);
		List<Booth> boothPopularNonprofit = boothService.findPopular(9);
		
		/*added by Athens on July-02-2016*/
		
		Map<String,Object> data = mav.getModel();
		data.put("boothNewBrandsList", boothNewBrands);
		data.put("boothWeeklyFeaturedList", boothWeeklyFeatured);
		data.put("boothMonthlyStarsList", boothMonthlyStars);
		//data.put("boothPopularList", boothPopular);
		data.put("boothPopularShopwiseList", boothPopularShopwise);
		data.put("boothPopularFooddrinkList", boothPopularFooddrink);
		data.put("boothPopularLifeServiceList", boothPopularLifeService);
		data.put("boothPopularProServiceList", boothPopularProService);
		data.put("boothPopularEduList", boothPopularEdu);
		data.put("boothPopularTourList", boothPopularTour);
		data.put("boothPopularTransportList", boothPopularTransport);
		data.put("boothPopularSportList", boothPopularSport);
		data.put("boothPopularNonprofitList", boothPopularNonprofit);
		
		
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
		//List<Booth> boothPopular = boothService.findPopular();
		List<Booth> boothPopularShopwise = boothService.findPopular(1);
		List<Booth> boothPopularFooddrink = boothService.findPopular(2);
		List<Booth> boothPopularLifeService = boothService.findPopular(3);
		List<Booth> boothPopularProService = boothService.findPopular(4);
		List<Booth> boothPopularEdu = boothService.findPopular(5);
		List<Booth> boothPopularTour = boothService.findPopular(6);
		List<Booth> boothPopularTransport = boothService.findPopular(7);
		List<Booth> boothPopularSport = boothService.findPopular(8);
		List<Booth> boothPopularNonprofit = boothService.findPopular(9);
		
		/*added by Athens on July-02-2016*/
		
		Map<String,Object> data = mav.getModel();
		data.put("boothNewBrandsList", boothNewBrands);
		data.put("boothWeeklyFeaturedList", boothWeeklyFeatured);
		data.put("boothMonthlyStarsList", boothMonthlyStars);
		//data.put("boothPopularList", boothPopular);
		data.put("boothPopularShopwiseList", boothPopularShopwise);
		data.put("boothPopularFooddrinkList", boothPopularFooddrink);
		data.put("boothPopularLifeServiceList", boothPopularLifeService);
		data.put("boothPopularProServiceList", boothPopularProService);
		data.put("boothPopularEduList", boothPopularEdu);
		data.put("boothPopularTourList", boothPopularTour);
		data.put("boothPopularTransportList", boothPopularTransport);
		data.put("boothPopularSportList", boothPopularSport);
		data.put("boothPopularNonprofitList", boothPopularNonprofit);
		
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
	
	@RequestMapping("/applybooth")
	public String goApplybooth(){
		return "applybooth";
	}
	
	@RequestMapping("/about/ch")
	public String goAboutCH(){
		return "about-ch";
	}
	
	
}
