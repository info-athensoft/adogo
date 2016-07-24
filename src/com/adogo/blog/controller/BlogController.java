package com.adogo.blog.controller;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.blog.entity.BlogThread;
import com.adogo.blog.service.BlogService;

@Controller
public class BlogController {
	
	private BlogService blogService;
	
	@Autowired
	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}
	
	@RequestMapping("/blog")
	public String goBlogIndex(){
		return "blog/blog-index";
	}
	
	@RequestMapping("/blog/{topicClass}")
	public String goBlogByTopicClass(@PathVariable int topicClass){
		return "blog/blog-topic";
	}
	
	@RequestMapping("/blog/thread/{threadId}")
	public ModelAndView openThread(@PathVariable long threadId){
		ModelAndView mav = new ModelAndView();
		
		BlogThread blogThread = blogService.getBlogById(threadId);
		
		Map<String,Object> data = mav.getModel();
		data.put("blogThread", blogThread);
		
		mav.setViewName("blog/blog-thread");
		return mav;
	}
	
	@RequestMapping(value="/blog/post",method=RequestMethod.GET)
	public String goPostThread(){
		System.out.println("/blog/post - GET");
		return "blog/blog-post";
	}
	
	@RequestMapping(value="/blog/post",method=RequestMethod.POST)
	public String doPostThread(
			HttpServletRequest request
			){
		System.out.println("/blog/post - POST");
		
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String author = request.getParameter("author");
		int catagoryNo = Integer.parseInt((String)request.getParameter("categoryNo"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//test
		System.out.println("author="+author);
		if(content.length()>200){
			content = content.substring(0,200);
		}
		
		
		BlogThread blogThread = new BlogThread();
		blogThread.setAuthor(author);
			//int catagoryNo = 1;
		blogThread.setCategoryNo(catagoryNo);
		blogThread.setLangNo(2052);
		blogThread.setTitle(title);
		blogThread.setContent(content);
		
		long threadId = blogService.createThread(blogThread);
		
		blogService.createThread(blogThread);
		return "redirect:/blog/thread/"+threadId;
	}
	
	/*
	@RequestMapping(value="/blog/post",method=RequestMethod.POST)
	public String doPostThread(){
			System.out.println("/blog/post - POST");
			long threadId = 1L;
			return "redirect:/blog/thread/"+threadId;	
	}*/

	
}
