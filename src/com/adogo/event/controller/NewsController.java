package com.adogo.event.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.event.entity.Event;
import com.adogo.event.entity.EventMedia;
import com.adogo.event.entity.EventTag;
import com.adogo.event.service.EventMediaService;
import com.adogo.event.service.EventTagService;
import com.adogo.event.service.NewsService;

@Controller
public class NewsController {
	
	private final static Logger logger = Logger.getLogger(NewsController.class);
	
	@Autowired
	private NewsService newsService;

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	
	@Autowired
	private EventMediaService eventMediaService;

	public void setEventMediaService(EventMediaService eventMediaService) {
		this.eventMediaService = eventMediaService;
	}
	
	@Autowired
	private EventTagService eventTagService;

	public void setEventTagService(EventTagService eventTagService) {
		this.eventTagService = eventTagService;
	}
	
	@RequestMapping("/event/news")
	public ModelAndView getNewsHome(){
		System.out.println("entering -- /event/news");
		logger.info("entering /event/news");
		
		ModelAndView mav = new ModelAndView();
		
		String viewName = "event/news";
		mav.setViewName(viewName);
		
		
		//data
		List<Event> listNews = newsService.getAllNews();
		System.out.println("The size of listNews = " + listNews.size());
		for(Event news : listNews){
			String eventUUID = news.getEventUUID();
			List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(eventUUID);
			news.setListEventMedia(listEventMedia);
			news.setPrimaryEventMedia();
			
			List<EventTag> listEventTag = eventTagService.getEventTagByEventUUID(eventUUID);
			news.setListEventTag(listEventTag);
		}
		
		Map<String, Object> data = mav.getModel();
		data.put("listNews", listNews);
		
		logger.info("existing /event/news");
		System.out.println("exiting -- /event/news");
		return mav;
	} 
	/*	
	@RequestMapping("/event")
	public ModelAndView getNewsHome2(){		
		System.out.println("entering -- /event/news");
		ModelAndView mav = new ModelAndView();
		
		String viewName = "event/news";
		mav.setViewName(viewName);
		
		
		Map<String, Object> data = mav.getModel();
		System.out.println("exiting -- /event/news");
		return mav;
	} */
/*	
	@RequestMapping("/event/activity")
	public ModelAndView getActivityHome(){
		ModelAndView mav = new ModelAndView();
		
		String viewName = "events/activity";
		mav.setViewName(viewName);
		
		//data
		List<Event> listNews = newsService.getAllNews();
		
		for(Event news : listNews){
			List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(news.getEventUUID());
			news.setListEventMedia(listEventMedia);
			news.setPrimaryEventMedia();
//			news.getPrimaryEventMedia();
		}
		
		Map<String, Object> data = mav.getModel();
		data.put("listNews", listNews);
		
		return mav;
	} */
}
