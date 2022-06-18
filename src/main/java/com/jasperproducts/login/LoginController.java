package com.jasperproducts.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.jasperproducts.login.model.User;
import com.jasperproducts.login.model.UserRepo;

@Controller
public class LoginController {
	//NOTE: Use @PathVariable when there is a @RestController and use @RequestParam when there is a simple @Controller
	
	@Autowired
	private UserRepo userrepo;
	
	RestTemplate resttemplate = new RestTemplate();

	@RequestMapping("/")
	public String checkMVC() {
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("name") String user_name, @RequestParam("Pass") String password, Model model) {
		
		User u = null;
		try {
			u = userrepo.findByName(user_name);
		}
		catch(Exception e){
			System.out.println("error in L-31 LoginController");
		}
		if(u!=null){
		model.addAttribute("Username_homepage", user_name);
		return "homePage";
		}
		model.addAttribute("Error_onlogin", "Error User Not found Kindly Register !!!!!!!!");
		return "login";
	}
	
	@RequestMapping("/register")
	public String gotoregistrationpage()
	{
		return "register";
		
	}
	
	@RequestMapping("/set_user")
	public String gotoRegisterMicroservice(@RequestParam("name") String username, @RequestParam("Pass1") String Pass1, 
			@RequestParam("Pass2") String Pass2)
	{
		System.out.println(username + "username" + Pass1 + "Pass1");
		if(Pass1.equals(Pass2))
		{
			//calling different microservice i.e registerMicroservice here using RestTemplate 
			resttemplate.getForObject("http://localhost:8081/register-user/"+username+"/"+Pass1, String.class);
		}
		 
		return "login";
		
	}
}
