package com.adogo.upcs.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.uaas.entity.UserAccount;
import com.adogo.upcs.entity.UserPaymentAccount;
import com.adogo.upcs.service.UserPaymentAccountService;
import com.braintreegateway.BraintreeGateway;
import com.braintreegateway.ClientTokenRequest;
import com.braintreegateway.Environment;


@Controller
public class BraintreeController {
	
	private UserPaymentAccountService userPaymentAccountService;
	
	@Autowired
	public void setUserPaymentAccountService(
			UserPaymentAccountService userPaymentAccountService) {
		this.userPaymentAccountService = userPaymentAccountService;
	}


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

	
	@RequestMapping("/myacct/createUserAccountPayment")
	public ModelAndView doRegisterUserPaymentAccount(HttpServletRequest request, HttpServletResponse response){
		System.out.println("entering /myacct/createUserAccountPayment");
		ModelAndView mav = new ModelAndView();		
		
		//data
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("e_mail");
		
		
		UserPaymentAccount userPaymentAccount = new UserPaymentAccount();
    	//userPaymentAccount.setCustomerId("");
    	userPaymentAccount.setFirstName(firstName);
    	userPaymentAccount.setLastName(lastName);
    	userPaymentAccount.setEmail(email);
    	UserAccount userAcct = (UserAccount)(request.getSession().getAttribute("userAccount"));
    	String userAccountName = userAcct.getAcctName();
    	userPaymentAccount.setUserAcct(userAccountName);
		
		//business logic
    	/* if userAccount already exists in table: user_acct_payment
    	 * 		to test if customer_id exits with a valid value
    	 * 			if YES or true,  do not register this user payment account
    	 * 			if NO or false,  just do register this user payment account now  
    	 */
    	
    	
    	UserPaymentAccount userPaymentAccountInTable = userPaymentAccountService.findByUserAcctName(userAccountName);
    	
    	String strMsg = "";
    	if(userPaymentAccountInTable==null){
    		strMsg = userPaymentAccountService.registerUserPaymentAccount(userPaymentAccount);
    	}else{
    		String customerIdInTable = userPaymentAccountInTable.getCustomerId().trim();
    		if(customerIdInTable==null || customerIdInTable.length()==0){
    			strMsg = userPaymentAccountService.registerUserPaymentAccount(userPaymentAccount); //TODO update
    		}else{
    			strMsg = "INFO: userPaymentAccount exist.";
    		}
    	}
        
        //
        Map<String,Object> data = mav.getModel();
        data.put("resultMessage", strMsg);
            
        String viewName = "upcs/myacct-create-payment-account-result";
		mav.setViewName(viewName);
		System.out.println("exiting /myacct/createUserAccountPayment");
		return mav;
	}
	
	/*
	 @RequestMapping("/myacct/createUserAccountPayment")
	public ModelAndView doRegisterUserPaymentAccount(HttpServletRequest request, HttpServletResponse response){
		System.out.println("entering /myacct/createUserAccountPayment");
		ModelAndView mav = new ModelAndView();		
		
		//data
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("e_mail");
		
		CustomerRequest customerRequest = new CustomerRequest()
				//.id("31518330")
                .firstName(firstName)
                .lastName(lastName);

            Result<Customer> result = gateway.customer().create(customerRequest);
            String strMsg = "";
            if (result.isSuccess()) {
            	strMsg =  "Customer created with Name: " + result.getTarget().getFirstName() + " " + result.getTarget().getLastName() + ", ID: " + result.getTarget().getId();
            	
            	String customerID = result.getTarget().getId(); //generated by braintree
            	
            	//save to db
            	UserPaymentAccount userPaymentAccount = new UserPaymentAccount();
            	userPaymentAccount.setCustomerId(customerID);
            	userPaymentAccount.setFirstName(firstName);
            	userPaymentAccount.setLastName(lastName);
            	userPaymentAccount.setEmail(email);
            	UserAccount userAcct = (UserAccount)(request.getSession().getAttribute("userAccount"));
            	userPaymentAccount.setUserAcct(userAcct.getAcctName());
            	
            	userPaymentAccountService.createCustomerPaymentAccount(userPaymentAccount);
            	
              } else {
            	  strMsg =  "Error: " + result.getMessage();
              }
            
        Map<String,Object> data = mav.getModel();
        data.put("resultMessage", strMsg);
            
        String viewName = "upcs/myacct-create-payment-account-result";
		mav.setViewName(viewName);
		System.out.println("exiting /myacct/createUserAccountPayment");
		return mav;
	}
	 */
	
	
}
