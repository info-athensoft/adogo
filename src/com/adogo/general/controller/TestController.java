package com.adogo.general.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("/test/profile")
	public String showProfile(){
		return "profile";
	}
	
	/**
	 * original design, display all booth by category or other criteria
	 * @return
	 */
	@RequestMapping("/test/index/1")
	public String testIndexV1(){
		return "index-v1";
	}
	
	
	/**
	 * upgraded booth design including details on it
	 * design layout for ad post thread on index page
	 * upgraded page layout for presenting both highlighted ad post threads and highlighted booths
	 * @return
	 */
	@RequestMapping("/test/index/2")
	public String testIndexV2(){
		return "index-v2";
	}
	
	/**
	 * refined category menu
	 * opened search bar
	 * @return
	 */
	@RequestMapping("/test/index/3")
	public String testIndexV3(){
		return "index";
	}
	
	
}
