package com.adogo.ad.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.ad.entity.AdPost;
import com.adogo.ad.service.AdPostService;

@Controller
@RequestMapping("/ad/adpost")
public class AdController {
	
	private final static Logger logger = Logger.getLogger(AdController.class);
	
	@Autowired
	private AdPostService adPostService;

	public void setAdPostService(AdPostService adPostService) {
		this.adPostService = adPostService;
	}
	
	@RequestMapping("/ad")
	public String gotoAdPostDetail(){
		String viewName = "ad/ad-post-detail-template";
		return viewName;
	}
	
	@RequestMapping("/list")
	public ModelAndView gotoAdPostList(){
		logger.info("entering... /ad/adpost/list");
		
		ModelAndView mav = new ModelAndView();
		String viewName = "ad/ad-post-list";
		mav.setViewName(viewName);
		
		//data
		List<AdPost> listAdPost = adPostService.getAllAdPost();
		logger.info("The size of listAdPost = " + listAdPost.size());

		Map<String, Object> data = mav.getModel();
		data.put("listAdPost", listAdPost);
		
		logger.info("leaving /ad/adpost/list");
		return mav;
	}
	
	/**
	 * TO FINISH THIS METHOD
	 * 
	 * @param adPostId
	 * @return
	 * 
	 * @author SFZ
	 * @since 2017-09-03
	 */
	@RequestMapping("/{adPostId}")
	public String getDataAdPostDetail(@PathVariable long adPostId){
		String viewName = "ad/ad-post-detail";
		return viewName;
	}
}
