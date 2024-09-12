package com.mycompany.dugout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("user")
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		return "user/login";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@PostMapping("join")
	public String join(UserDto form) {
		UserDto user = new UserDto();
		
		user.setUserId(form.getUserId());
		user.setUserPassword(form.getUserPassword());
		user.setUserName(form.getUserName());
		user.setUserPhone(form.getUserPhone());
		user.setUserAddress(form.getUserAddress());
		user.setUserEmail(form.getUserEmail());
		user.setUserRole("user");
		user.setUserActive(1);

		userService.join(user);
		return "redirect:/user/login";
	}
	
	@RequestMapping("/findId")
	public String findId() {
		return "user/findId";
	}
	
	@RequestMapping("/findPassword")
	public String findPassword() {
		return "user/findPassword";
	}
}
