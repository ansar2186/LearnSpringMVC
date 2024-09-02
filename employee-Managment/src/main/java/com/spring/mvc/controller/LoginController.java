package com.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.entity.User;
import com.spring.mvc.service.UserService;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String userName, @RequestParam String password, Model model) {

		User userObj = userService.userLogin(userName, password);

		if (userObj != null) {

			if (userObj.getUserName().equals(userName) && userObj.getPassword().equals(password)) {
				model.addAttribute("message", "Login Successfull");
				model.addAttribute("name", userName);
				return "home";
			} else {
				model.addAttribute("message", "invalid credentials, Try Agin with valid credentials ? ");
				return "index";
			}

		} else {

			model.addAttribute("message", userName + " " + "User Not Found , Please try Agin with Valid User Name ?");
			return "error";
		}

	}

}
