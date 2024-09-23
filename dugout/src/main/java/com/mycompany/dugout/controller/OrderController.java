package com.mycompany.dugout.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("order")
public class OrderController {
	
	@RequestMapping("")
	public String cart() {
		log.info("장바구니");
		return "cart/cart";
	}

	@ResponseBody
	@PostMapping("/orderItem")
	public boolean orderItem(int[] orderList,HttpSession session) {
		
		if(orderList==null) {
			return false;
		}
		session.setAttribute("orderList", orderList);
		return true;
	}
	
}
