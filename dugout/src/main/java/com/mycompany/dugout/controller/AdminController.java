package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("")
	public String myMain() {
		log.info("실행");
		return "admin/mainManagement";
	}
	
	@RequestMapping("/bannerManagement")
	public String  bannerManagement() {
		log.info("실행");
		return "admin/bannerManagement";
	}
	
	@RequestMapping("/headerManagement")
	public String  headerManagement() {
		log.info("실행");
		return "admin/headerManagement";
	}
	
	@RequestMapping("/previewBanner")
	public String  previewBanner() {
		log.info("실행");
		return "admin/previewBanner";
	}
}
