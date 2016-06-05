package com.athensoft.common.email.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.common.email.service.EmailService;


@Controller
public class EmailController {
	
	private EmailService emailService;
	
	@Autowired
	public void setEmailService(EmailService emailService){
		this.emailService = emailService;
	}
	
	@RequestMapping("/goto_email_single.do")
	public ModelAndView gotoEmailSingle(){
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "contactus";
		mav.setViewName(viewName);
		
		//test service
		//emailService.testService("send_email_single.do");
					
		return mav;
	}
	
	
	@RequestMapping("/goto_email_multi.do")
	public ModelAndView gotoEmailMulti(){
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "contactus";
		mav.setViewName(viewName);
		
		//test service
		//emailService.testService("send_email_multi.do");
		
		return mav;
	}
	
	/*
	@RequestMapping("/send_email_single.do")
	public ModelAndView sendEmailSingle(@RequestParam String message_body){
		System.out.println("entering send_email_single.do");
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "contact";
		mav.setViewName("redirect:/contact.do");
		
		//test service
		//emailService.sendSimpleMail(message_body);
		emailService.sendMail(message_body);
							
		return mav;
	}*/
	
	/*
	@RequestMapping("/send_contact_email_single.do")
	public ModelAndView sendContactMail(
		@RequestParam String contactform_name,
		@RequestParam String contactform_email,
		@RequestParam String contactform_phone,
		@RequestParam String contactform_subject,
		@RequestParam String contactform_message
		){
		System.out.println("entering send_contact_email_single.do ...");
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "redirect:/contact.do";
		mav.setViewName(viewName);
		
		//create contact form object
		ContactForm cf = new ContactForm();
		cf.setName(contactform_name);
		cf.setEmail(contactform_email);
		cf.setPhone(contactform_phone);
		cf.setSubject(contactform_subject);
		cf.setMessage(contactform_message);
		
		emailService.sendContactMail(cf);
							
		return mav;
	}
	*/
	
	/*
	@RequestMapping("/send_application_email_single.do")
	public ModelAndView sendApplicationMail(
		@RequestParam String applicationform_fname,
		@RequestParam String applicationform_lname,
		@RequestParam String applicationform_email,
		@RequestParam String applicationform_phone,
		@RequestParam String applicationform_message
		){
		System.out.println("entering send_contact_email_single.do ...");
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "redirect:/career.do";
		mav.setViewName(viewName);
		
		//create application form object
		ApplicationForm af = new ApplicationForm();
		af.setFirstName(applicationform_fname);
		af.setLastName(applicationform_lname);
		af.setEmail(applicationform_email);
		af.setPhone(applicationform_phone);
		af.setMessage(applicationform_message);
		
		emailService.sendApplicationMail(af);
							
		return mav;
	}
	*/
	
}
