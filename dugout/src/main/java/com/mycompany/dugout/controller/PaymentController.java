package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PaymentController {
	@RequestMapping("/payment")
	public String payment() {
		log.info("실행");
		return "/payment";
	}
}
