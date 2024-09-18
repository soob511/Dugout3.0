package com.mycompany.dugout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.dugout.dto.CartDto;
import com.mycompany.dugout.service.CartService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping("")
	public String cart() {
		log.info("실행");
		return "cart/cartForm";
	}
	
	@PostMapping("/addCart")
	public String addCart(Authentication authentication, int goodsId, int cartCount) {
		CartDto item = new CartDto();

		String userId = authentication.getName();
		item.setUserId(userId);
		item.setGoodsId(goodsId);
		item.setCartCount(cartCount);
		
		cartService.addCart(item);
		return "redirect:/goods/goodsDetail?goodsId=" + goodsId;
	}
}
