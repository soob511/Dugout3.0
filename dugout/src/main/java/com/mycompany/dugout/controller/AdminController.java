package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/Admin")
public class AdminController {
	@RequestMapping("/manageBanner")
	public String banner() {
		log.info("배너관리");
		return "admin/manageBanner";
	}
}
