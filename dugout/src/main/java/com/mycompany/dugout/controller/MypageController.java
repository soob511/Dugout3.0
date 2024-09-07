package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/mypage")
public class MypageController {
	@RequestMapping("")
	public String mainMyPage() {
		log.info("실행");
		return "mypage/mainMyPage";
	}
	
	@RequestMapping("/heartListForm")
	public String heartListForm() {
		log.info("실행");
		return "mypage/heartListForm";
	}

	@RequestMapping("/memberInformation")
	public String memberInformation() {
		log.info("실행");
		return "mypage/memberInformation";
	}
	
	@RequestMapping("/purchaseHistory")
	public String purchaseHistory() {
		log.info("실행");
		return "mypage/purchaseHistory";
	}
}
