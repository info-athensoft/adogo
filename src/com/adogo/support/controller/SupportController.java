
package com.adogo.support.controller;

import java.util.Map;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.support.entity.Support;
import com.adogo.support.service.SupportService;

@Controller
@RequestMapping("/support")
public class SupportController {
	
	private static final Logger logger = Logger.getLogger(SupportController.class);
	
	@Autowired
	private SupportService supportService;
		
	@Autowired
	public void setAdPostService(SupportService supportService) {
		this.supportService = supportService;
	}
	
	/**
	 * Display support faq detail
	 * @param
	 * @return
	 * 
	 * @author sfz
	 */
	
	@RequestMapping("/faq/detail.html")
	public ModelAndView gotoEdit(@RequestParam long supportId){
		logger.info("entering... /support/faq/detail.html");
		logger.info("supportId = " + supportId);
	
		/* execute business logic */
		Support faq = supportService.findById(supportId);
		
		/* assemble model and view */
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		
		/* set data */
		model.put("faq", faq);
		
		/* set view */
		String viewName = "support/faq_detail";
	    mav.setViewName(viewName);
		
		logger.info("exiting... /support/faq/detail.html");
		return mav;
	}

}

