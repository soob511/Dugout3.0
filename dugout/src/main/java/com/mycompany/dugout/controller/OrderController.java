package com.mycompany.dugout.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.PayItemDto;
import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.security.UserDetail;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("order")
public class OrderController {
	
	@RequestMapping("/orderList")
	public String orderList() {
	
		return "mypage/orderList";
	}
	
	@GetMapping("/payment")
	public String payment(Model model,Authentication authentication,HttpSession session) {
		UserDetail userDetail = (UserDetail) authentication.getPrincipal();
		UserDto user = userDetail.getUser();
		model.addAttribute("user",user);
	
		
		return "pay/payment";
	}

	@ResponseBody
	@PostMapping("/orderItem")
	public boolean orderItem(@RequestBody Map<String, Object> map,HttpSession session) {
		
		List<PayItemDto> orderList = (List<PayItemDto>) map.get("orderList");
	    int totalPrice = (int) map.get("totalPrice");
		
		
		if(orderList==null) {
			return false;
		}
		
		session.setAttribute("orderList", orderList);
		session.setAttribute("totalPrice", totalPrice);
		return true;
	}
}
