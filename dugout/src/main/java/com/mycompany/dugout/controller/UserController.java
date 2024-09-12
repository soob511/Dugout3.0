package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("user")
public class UserController {
	@RequestMapping("/login")
	public String login() {
		log.info("실행");
		return "user/login";
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		log.info("실행");
		return "user/joinForm";
	}
	
	
	@RequestMapping("/findId")
	public String findId() {
		log.info("실행");
		return "user/findId";
	}
	
	@RequestMapping("/findPassword")
	public String findPassword() {
		log.info("실행");
		return "user/findPassword";
	}
}
