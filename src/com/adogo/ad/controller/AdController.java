package com.adogo.ad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdController {
	
	@RequestMapping("/ad")
	public String gotoAdPostDetail(){
		String viewName = "ad/ad-post-detail";
		return viewName;
	}
}
