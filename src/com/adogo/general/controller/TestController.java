package com.adogo.general.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("/test/profile")
	public String showProfile(){
		return "profile";
	}
}
