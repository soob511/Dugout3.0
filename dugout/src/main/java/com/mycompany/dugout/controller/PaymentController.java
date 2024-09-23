package com.mycompany.dugout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.security.UserDetail;
import com.mycompany.dugout.service.GoodsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("pay")
public class PaymentController {
	
	@Autowired
	GoodsService goodsService;
	
	@GetMapping("/payment")
	public String payment(Model model,Authentication authentication,HttpSession session) {
		UserDetail userDetail = (UserDetail) authentication.getPrincipal();
		UserDto user = userDetail.getUser();
		model.addAttribute("user",user);
		
		int[] orderList = (int[]) session.getAttribute("orderList");
		List<GoodsDto> list;
		/*for(int goodsId:orderList) {
			list.add(goodsService.get)
		}
		*/
		
		return "pay/payment";
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
