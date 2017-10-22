package com.adogo.general.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping("/search/result")
	public String showSearchResult(){
		return "search/search-result";
	}
}
