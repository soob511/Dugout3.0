package com.mycompany.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/Payment")
public class PaymentController {

	@RequestMapping("")
	public String pay() {
		log.info("결제페이지");
		return "payment/payment";
	}
}
