
package com.adogo.comment.controller;

import java.util.List;
import java.util.Map;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.comment.entity.Comment;
import com.adogo.comment.service.CommentService;
import com.adogo.support.entity.Support;
import com.adogo.support.service.SupportService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	private static final Logger logger = Logger.getLogger(CommentController.class);
	
	@Autowired
	private CommentService commentService;
		
	
	
	/**
	 * Display comment detail
	 * @param
	 * @return
	 * 
	 * @author sfz
	 */
	
	@RequestMapping("/list.html")
	public ModelAndView gotoCommentList(){
		logger.info("entering... /comment/list.html");
	
		/* execute business logic */
		List<Comment> comments = commentService.findAll();
		
		/* assemble model and view */
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		
		/* set data */
		model.put("comments", comments);
		
		/* set view */
		String viewName = "comment/comment_list";
	    mav.setViewName(viewName);
		
		logger.info("exiting... /comment/list.html");
		return mav;
	}

}

