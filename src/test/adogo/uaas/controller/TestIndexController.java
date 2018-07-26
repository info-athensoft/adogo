package test.adogo.uaas.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import test.adogo.uaas.entity.User;
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
	
	@RequestMapping(value="/user",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<?> user(){
		System.out.println("entering /test/user");
        User u1 = new User();
        u1.setId("id1");
        u1.setName("name1");
        u1.setUsername("username1");
        u1.setEmail("email1");
        System.out.println("exiting /test/user");
        return new ResponseEntity<User>(u1, HttpStatus.OK);
	}
	
	@RequestMapping(value="/users",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<?> users(){
		System.out.println("entering /test/users");
		ArrayList<User> al = new ArrayList<User>();
        User u1 = new User();
        u1.setId("id1");
        u1.setName("name1");
        u1.setUsername("username1");
        u1.setEmail("email1");
        User u2 = new User();
        u2.setId("id2");
        u2.setName("name2");
        u2.setUsername("username2");
        u2.setEmail("email2");
        al.add(u1);
        al.add(u2);
        System.out.println("exiting /test/users");
        return new ResponseEntity<ArrayList<User>>(al, HttpStatus.OK);
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
