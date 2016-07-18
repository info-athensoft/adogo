package com.adogo.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	
	@RequestMapping("/blog")
	public String goBlogIndex(){
		return "blog/blog-index";
	}
	
	@RequestMapping("/blog/{topicClass}")
	public String goBlogByTopicClass(@PathVariable int topicClass){
		return "blog/blog-topic";
	}
	
	@RequestMapping("/blog/thread")
	public String openThread(){
		return "blog/blog-thread";
	}
	
	@RequestMapping("/blog/post")
	public String postThread(){
		return "blog/blog-post";
	}
	
	
}
