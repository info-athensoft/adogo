package com.adogo.ad.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.ad.entity.AdPost;
import com.adogo.ad.entity.AdPostAudio;
import com.adogo.ad.entity.AdPostCoverImage;
import com.adogo.ad.entity.AdPostText;
import com.adogo.ad.entity.AdPostVideo;
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
	@RequestMapping(value="/{adPostId}",method=RequestMethod.GET)
	public ModelAndView getDataAdPostDetail(@PathVariable long adPostId){
		logger.info("ADController entering... /ad/adpost/"+adPostId);
		logger.info("adPostId=" + adPostId);
		
		ModelAndView mav = new ModelAndView();
		String viewName = "ad/ad-post-detail";
		mav.setViewName(viewName);
		
		//data
		Map<String, String> vars = new HashMap<String, String>();
        vars.put("adPostId", Long.toString(adPostId));
        logger.info("ADController vars: adPost -> "+vars.get("adPostId"));
        
        try
        {
            RestTemplate rt = new RestTemplate();
            rt.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
            rt.getMessageConverters().add(new StringHttpMessageConverter());

            String uri = new String("http://127.0.0.1:8080/acp/ad/adpost/{adPostId}");	//TODO Please pay attention to the IP section

            AdPost adPost = rt.getForObject(uri, AdPost.class, vars);

            logger.info("adPost:  " + adPost.toString());
            logger.info("adPost.getMediaCoverUrl():  " + adPost.getMediaCoverUrl());
            logger.info("adPost.getShortDesc():  " + adPost.getShortDesc());
            
            List<AdPostText> textList = adPost.getListAdPostText();
            AdPostText primaryText = adPost.getPrimaryTextObject(textList);
    		logger.info("primaryText getMediaUrl()="+primaryText.getLongDesc());
            
            List<AdPostCoverImage> coverImageList = adPost.getListAdPostCoverImage();
            AdPostCoverImage primaryCoverImage = adPost.getPrimaryMediaObject(coverImageList);
    		logger.info("primaryCoverImage getMediaUrl()="+primaryCoverImage.getMediaUrl());
            
    		List<AdPostAudio> audioList = adPost.getListAdPostAudio();
            AdPostAudio primaryAudio = adPost.getPrimaryMediaObject(audioList);
    		logger.info("primaryAudio getMediaUrl()="+primaryAudio.getMediaUrl());
    		
    		List<AdPostVideo> videoList = adPost.getListAdPostVideo();
            AdPostVideo primaryVideo = adPost.getPrimaryMediaObject(videoList);
    		logger.info("primaryVideo getMediaUrl()="+primaryVideo.getMediaUrl());
    		
            Map<String, Object> data = mav.getModel();
    		data.put("adPost", adPost);
        }
        catch (HttpClientErrorException e)
        {
          //If we get a HTTP Exception display the error message            
        	System.out.println("error1:  " + e.getMessage()); //.getResponseBodyAsString()
        }
        catch(Exception e)
        {
        	System.out.println("error2:  " + e.getMessage());
        }
		
		logger.info("leaving... /ad/adpost/"+adPostId);
		return mav;
	}
}
