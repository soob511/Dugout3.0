package com.mycompany.dugout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("user")
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@ResponseBody
	@PostMapping("/idCheck")
	public boolean idCheck(String inputId) {
		boolean flag = userService.idCheck(inputId);
		return flag;
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
		return "redirect:/user/loginForm";
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
