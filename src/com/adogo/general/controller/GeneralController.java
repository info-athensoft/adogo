package com.adogo.general.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController {
	
	@RequestMapping("/")
	public String goIndex(){
		return "index";
	}
	
	@RequestMapping("/index")
	public String goIndex2(){
		return "index";
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
