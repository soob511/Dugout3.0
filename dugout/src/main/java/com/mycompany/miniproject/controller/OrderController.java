package com.mycompany.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("Order")
public class OrderController {
	
	@RequestMapping("")
	public String orderList(){
		log.info("주문목록");
		return "order/orderList";
	}

}
