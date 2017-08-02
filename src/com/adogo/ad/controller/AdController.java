package com.adogo.ad.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.ad.entity.AdPost;
import com.adogo.ad.service.AdPostService;

@Controller
@RequestMapping("/ad/adpost")
public class AdController {
	
	@Autowired
	private AdPostService adPostService;

	public void setAdPostService(AdPostService adPostService) {
		this.adPostService = adPostService;
	}
	
	@RequestMapping("/ad")
	public String gotoAdPostDetail(){
		String viewName = "ad/ad-post-detail";
		return viewName;
	}
	
	@RequestMapping("/list")
	public ModelAndView gotoAdPostList(){
		System.out.println("entering /ad/adpost/list");
		
		ModelAndView mav = new ModelAndView();
		String viewName = "ad/ad-post-list";
		mav.setViewName(viewName);
		
		//data
		List<AdPost> listAdPost = adPostService.getAllAdPost();
		System.out.println("The size of listAdPost = " + listAdPost.size());

		Map<String, Object> data = mav.getModel();
		data.put("listAdPost", listAdPost);
		
		System.out.println("leaving /ad/adpost/list");
		return mav;
	}
}
