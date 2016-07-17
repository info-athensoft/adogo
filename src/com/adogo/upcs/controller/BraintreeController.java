package com.adogo.upcs.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.braintreegateway.BraintreeGateway;
import com.braintreegateway.ClientTokenRequest;
import com.braintreegateway.Environment;

@Controller
public class BraintreeController {
	
	private static BraintreeGateway gateway = new BraintreeGateway(
			  Environment.SANDBOX,
			  "k3f73sfh3vf5vhdp",
			  "4h2yn56tdqzrc6nc",
			  "41b370e255158588ed75f406e4b74195"
			);
	
	@RequestMapping("/myacct/recharge")
	public ModelAndView goRecharge() {
		System.out.println("entering /myacct/recharge");
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> model = mav.getModel();
		
		//data
		ClientTokenRequest clientTokenRequest = new ClientTokenRequest().customerId("test2cust");
		String clientToken = gateway.clientToken().generate(clientTokenRequest);
		model.put("clientToken", clientToken);
		
		//view
//		String viewName = "getpaid/braintree";
		String viewName = "upcs/myacct-recharge";
		mav.setViewName(viewName);
		
		System.out.println("exiting /myacct/recharge");
		return mav;
	}
	
	@RequestMapping("/myacct/mywallet")
	public ModelAndView goMywallet() {
		System.out.println("entering /myacct/mywallet");
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> model = mav.getModel();
		
		//data
//		ClientTokenRequest clientTokenRequest = new ClientTokenRequest().customerId("test2cust");
//		String clientToken = gateway.clientToken().generate(clientTokenRequest);
//		model.put("clientToken", clientToken);
		
		//view
		String viewName = "upcs/myacct-mywallet";
		mav.setViewName(viewName);
		
		System.out.println("exiting /myacct/mywallet");
		return mav;
	}
	
	
}
