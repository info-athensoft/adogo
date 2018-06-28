package test.adogo.uaas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adogo.uaas.entity.UserAccount;
import test.adogo.uaas.entity.UserDetails;

@Controller
@RequestMapping("/test")
public class TestIndexController {
	@RequestMapping("/test")
	public String gotoIndex1(){
		return "test/test";
	}
	
	@RequestMapping("/test2")
	public String gotoIndex2(){
		System.out.println("entering /test/test2");
		return "test/test2";
	}
	
	@RequestMapping("/index")
	public String gotoIndex3(){
		System.out.println("entering /test/index");
		return "test/index.html";
	}
	
	@RequestMapping(value="/userdetails",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<?> userdetails(){
		System.out.println("entering /test/userdetails");
        UserDetails userDetails = new UserDetails();
        userDetails.setName("JavaInterviewPoint");
        userDetails.setDepartment("Blogging");
        System.out.println("exiting /test/userdetails");
        return new ResponseEntity<UserDetails>(userDetails, HttpStatus.OK);
	}
	
	public void testSession(HttpSession session, 
							@RequestParam long acctId,
							@RequestParam String acctName){
		UserAccount userAcctObj = new UserAccount();
		userAcctObj.setAcctId(acctId);
		userAcctObj.setAcctName(acctName);
		
		session.setAttribute("userAcct", userAcctObj);
	}
}
