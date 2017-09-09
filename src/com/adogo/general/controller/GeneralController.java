package com.adogo.general.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.ad.entity.AdPost;
import com.adogo.ad.service.AdPostService;
import com.adogo.business.entity.Booth;
import com.adogo.business.service.BoothService;

@Controller
public class GeneralController {
	
	private BoothService boothService;
	
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
	
	private AdPostService adPostService;
	
	@Autowired
	public void setAdPostService(AdPostService adPostService) {
		this.adPostService = adPostService;
	}


	@RequestMapping("/")
	public ModelAndView goIndex(){
		ModelAndView mav = new ModelAndView();
		
		List<Booth> boothNewBrands = boothService.findNewBrands();
		List<Booth> boothWeeklyFeatured = boothService.findWeeklyFeatured();
		List<Booth> boothMonthlyStars = boothService.findMonthlyStars();
		//List<Booth> boothPopular = boothService.findPopular();
		List<Booth> boothPopularShopwise = boothService.findPopular(100);
		List<Booth> boothPopularFooddrink = boothService.findPopular(200);
		List<Booth> boothPopularLifeService = boothService.findPopular(300);
		List<Booth> boothPopularProService = boothService.findPopular(400);
		List<Booth> boothPopularEdu = boothService.findPopular(500);
		List<Booth> boothPopularTour = boothService.findPopular(600);
		List<Booth> boothPopularTransport = boothService.findPopular(700);
		List<Booth> boothPopularSport = boothService.findPopular(800);
		List<Booth> boothPopularNonprofit = boothService.findPopular(900);
		
		List<Booth> boothAllList = boothService.findAll();
		
		final int QTY_OF_LATEST_ADS = 6;
		List<AdPost> AdPostLatest = adPostService.findLatestAdPostByQty(QTY_OF_LATEST_ADS);
		
		
		
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
		
		data.put("boothAllList", boothAllList);
		
		data.put("AdPostLatest_1", AdPostLatest.get(0));	//#1 of Latest Ads
		data.put("AdPostLatest_2", AdPostLatest.get(1));	//#2 of Latest Ads
		data.put("AdPostLatest_3", AdPostLatest.get(2));	//#3 of Latest Ads
		data.put("AdPostLatest_4", AdPostLatest.get(3));	//#4 of Latest Ads
		data.put("AdPostLatest_5", AdPostLatest.get(4));	//#5 of Latest Ads
		data.put("AdPostLatest_6", AdPostLatest.get(5));	//#6 of Latest Ads
		
		
		
		mav.setViewName("index");
		return mav;
	}

	@RequestMapping("/index")
	public ModelAndView goIndex2(){
		/*
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
		*/
		return goIndex();
	}
	
	@RequestMapping("/about")
	public String goAbout(){
		return "home/about";
	}
	
	@RequestMapping("/about/ch")
	public String goAboutCH(){
		return "home/about-ch";
	}
	
	@RequestMapping("/sitemap")
	public String goSitemap(){
		return "home/sitemap";
	}
	
	@RequestMapping("/support/applybooth")
	public String goApplybooth(){
		return "support/applybooth";
	}
	
	@RequestMapping("/support/faq")
	public String goFaq(){
		return "support/faq";
	}
	
}
