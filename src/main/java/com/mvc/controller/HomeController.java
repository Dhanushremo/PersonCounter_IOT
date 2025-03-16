package com.mvc.controller;


import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.dao.UserDao;
import com.mvc.daoimpl.UserDaoImpl;
import com.mvc.model.User;

@Controller
public class HomeController {
	private static int status;
	private static ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml"); 
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/signIn")
	public String signIn() {
		return "signIn";
	}
	
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	@RequestMapping("/sendData")
	public String insert(@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("phone") String phone,@RequestParam("pwd") String password,Model m) {
		User u=(User)ac.getBean("user");
		u.setName(name);
		u.setEmail(email);
		u.setPhoneNumber(phone);
		u.setPassword(password);
		m.addAttribute("user",u); 
		UserDao ud=(UserDaoImpl)ac.getBean("userDaoImplDemo");
		status=ud.insert(u);
		return status==1?"sucess":"failure";
	}
	@RequestMapping("/sign")
	public String login(@RequestParam("email") String email,@RequestParam("pwd") String password,Model model) {
		UserDao ud=(UserDaoImpl)ac.getBean("userDaoImplDemo");
		User u=ud.insertEmail(email);
		model.addAttribute("u",u);
		if(u!=null) {
			if(u.getEmail().equals(email) || u.getPhoneNumber().equals(email)) {
				if(u.getPassword().equals(password)) {
					return "home";
				}
			}
		}
		return "failure";
	}
	@RequestMapping("/working")
	public String working() {
		return "working";
	}
	@RequestMapping("/code")
	public String code() {
		return "code";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/submit")
	public String submit() {
		return "photo";
	}
	@RequestMapping("/logout")
	public String logout() {
		return "index";
	}
}





