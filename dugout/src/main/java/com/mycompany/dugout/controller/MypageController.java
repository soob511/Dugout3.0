package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/mypage")
public class MypageController {
	@RequestMapping("")
	public String mypage() {
		return "mypage/orderList";
	}
	
	@RequestMapping("/userInfo")
	public String userInfo() {
		log.info("실행");
		return "mypage/userInfo";
	}
	
	@RequestMapping("/heartListForm")
	public String heartListForm() {
		log.info("실행");
		return "mypage/heartListForm";
	}
}
