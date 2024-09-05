package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("Order")
public class OrderItemController {
	
	@RequestMapping("")
	public String cart() {
		log.info("장바구니");
		return "cart/cart";
	}
}
