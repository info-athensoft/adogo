package com.adogo.event.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.business.entity.Booth;
import com.adogo.business.service.BoothService;
import com.adogo.event.entity.Event;
import com.adogo.event.entity.EventMedia;
import com.adogo.event.entity.EventTag;
import com.adogo.event.service.EventMediaService;
import com.adogo.event.service.EventTagService;
import com.adogo.event.service.NewsService;

@Controller
public class NewsController {
	
	private final static Logger logger = Logger.getLogger(NewsController.class);
	
	private int hitCount;
private HashMap<Long, Long> hitCounts = new HashMap<Long, Long>();
	
	@Autowired
	private BoothService boothService;
		
	@Autowired
	public void setBoothService(BoothService boothService) {
		this.boothService = boothService;
	}
	
	@PostConstruct
	public void init() {
//		hitCount = 0;
		System.out.println("PostConstruct: hitCount="+hitCount);
		
		List<Booth> booths = boothService.findAll();
		for(Booth booth : booths){
			hitCounts.put(booth.getBizNo(), booth.getCounter());
			if (booth.getCounter()>0)
				System.out.println("PostConstruct: BizNo=" + booth.getBizNo() + " Counter=" + booth.getCounter());
		}
	}
	
	@PreDestroy
	public void destroy() { 
      // Write hitCount value in database.
//		System.out.println("entering destroy hit counter. ");
/*		
		for (Map.Entry<Long, Long> entry : hitCounts.entrySet()) {
		    Long bizNo = entry.getKey();
		    Long counter = entry.getValue();
		    System.out.println("destroy ... saving hit counter. bizNo="+bizNo+" counter="+counter);
		    if (counter>0) {
		    	boothService.updateCounter(bizNo, counter);
		    	System.out.println("destroy ... saving hit counter>>>>>>>>>>>. bizNo="+bizNo+" counter="+counter);
		    }

		} */
		Iterator it = hitCounts.entrySet().iterator();
	    while (it.hasNext()) {
	        Map.Entry entry = (Map.Entry)it.next();
//	        System.out.println(entry.getKey() + " = " + entry.getValue());
	        Long bizNo = (Long) entry.getKey();
		    Long counter = (Long) entry.getValue();
//		    System.out.println("destroy ... saving hit counter. bizNo="+bizNo+" counter="+counter);
		    if (counter>0) {
		    	boothService.updateCounter(bizNo, counter);
		    	System.out.println("destroy ... saving hit counter>>>>>>>>>>>. bizNo="+bizNo+" counter="+counter);
		    	
		    }
	        it.remove(); // avoids a ConcurrentModificationException
	    }
   }
	
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
	
	@RequestMapping("/event/act")
	public ModelAndView getActHome(@RequestParam String bizNo){
		
		
//		hitCount++;
		Long key = Long.valueOf(bizNo);
		System.out.println("entering -- /event/act ... bizNo= " + bizNo + ", hitCount="+hitCounts.get(key));
		hitCounts.put(key, hitCounts.get(key) + 1);
		
		ModelAndView mav = new ModelAndView();
		
		String viewName = "event/act";
		mav.setViewName(viewName);
		
		Map<String, Object> data = mav.getModel();
		data.put("bizNo", bizNo);
				
		System.out.println("exiting -- /event/act hitCount="+hitCounts.get(key));
		return mav;
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
