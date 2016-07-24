package test.adogo.uaas.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.adogo.uaas.entity.UserAccount;
import com.adogo.uaas.service.UserAccountService;

/**
 * For Back-end Management use
 * For test purpose
 * 
 * @author Athens
 *
 */
@Controller
public class UserAccountController {
	
	private static final Logger logger = Logger.getLogger(UserAccountController.class);
	
	
	private UserAccountService userAccountService;
	
	@Autowired
	public void setUserAccountService(UserAccountService userAccountService) {
		this.userAccountService = userAccountService;
	}


	@RequestMapping(value="/useracct",method=RequestMethod.GET)
	public ModelAndView getUserAccountAll(){
		logger.info("GET /useracct");
		ModelAndView mav = new ModelAndView();
		
		List<UserAccount> userAccountList = userAccountService.getUserAccountAll();
		logger.info(userAccountList.toString());
		
		Map<String,Object> data = mav.getModel();
		data.put("userAccountList", userAccountList);
		
		mav.setViewName("uaas/user-acct-list");
		return mav;
	}
	
	@RequestMapping(value="/useracct/{acctId}",method=RequestMethod.GET)
	public ModelAndView getUserAccount(@PathVariable long acctId){
		System.out.println("hello");
		ModelAndView mav = new ModelAndView();
		
		UserAccount userAccount = userAccountService.getUserAccount(acctId);
		
		logger.info(userAccount.toString());
		
		Map<String,Object> data = mav.getModel();
		data.put("userAccount", userAccount);
		
		mav.setViewName("uaas/user-acct");
		return mav;
	}
	
	
	
	@RequestMapping(value="/useracct",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> createUserAccount(
			@RequestParam String acctName,
			@RequestParam String password
			){
		System.out.println("hello POST");
		ModelAndView mav = new ModelAndView();				
		
		//UserAccount userAccount = userAccountService.getUserAccount(acctId);
		
		//logger.info(userAccount.toString());
		
		UserAccount userAccount = new UserAccount();
		userAccount.setAcctName(acctName);
		userAccount.setPassword(password);
//		userAccount.setAcctStatus(acctStatus);
		
		long key = userAccountService.createUserAccount(userAccount);
		//System.out.print("key ="+key);
				
		Map<String,Object> data = mav.getModel();
		
//		data.put("userAccount", userAccount);
		data.put("userAccountKey", key);
		
		//mav.setViewName("redirect:/useracct/"+key);
		return data;
	}
	
	
	@RequestMapping(value="/useracct/{acctId}",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> updateUserAccount(
			@PathVariable long acctId,
			@RequestParam String password
			){
		System.out.println("hello PUT");				
		
		//UserAccount userAccount = userAccountService.getUserAccount(acctId);
		
		//logger.info(userAccount.toString());		
		
		UserAccount userAccount = userAccountService.getUserAccount(acctId);
		userAccount.setPassword(password);
		
		userAccountService.updateUserAccount(userAccount);
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		
//		data.put("userAccount", userAccount);
		data.put("userAccountKey", acctId);
		
		//mav.setViewName("redirect:/useracct/"+key);
		return data;
	}
	
}
