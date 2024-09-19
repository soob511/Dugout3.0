package com.mycompany.dugout.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.CartDto;
import com.mycompany.dugout.dto.CartItemDto;
import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.service.CartService;
import com.mycompany.dugout.service.GoodsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private CartService cartService;
	@Resource
	private GoodsService goodsService;
	
	@RequestMapping("")
	public String cart(Authentication authentication, Model model) {
		if (authentication == null || !authentication.isAuthenticated()) {
	        return "user/loginForm";
	    }

		String userId = authentication.getName();
		List<CartDto> CartItemList = cartService.getCartList(userId);
	    List<CartItemDto> cartItems = new ArrayList<>();	    
	    
	    for (CartDto cartItem : CartItemList) {
	    	CartItemDto item = new CartItemDto();
	    	GoodsDto goods = goodsService.getGoodsDetail(cartItem.getGoodsId());
	    	
	    	item.setUserId(userId);
	    	item.setGoodsId(cartItem.getGoodsId());
	    	item.setCartCount(cartItem.getCartCount());
	    	item.setGoodsName(goods.getGoodsName());
	    	item.setGoodsTeam(goods.getGoodsTeam());
	    	item.setGoodsPrice(goods.getGoodsPrice());
	    	
	    	cartItems.add(item);
	    }

	    model.addAttribute("cartItems", cartItems);

		return "cart/cartForm";
	}
	
	@ResponseBody
	@PostMapping("/addCart")
	public boolean addCart(Authentication authentication, int goodsId, int cartCount) {
		if (authentication == null || !authentication.isAuthenticated()) {
			return false;
	    }
		
		CartDto item = new CartDto();

		String userId = authentication.getName();
		item.setUserId(userId);
		item.setGoodsId(goodsId);
		item.setCartCount(cartCount);
		
		cartService.addCart(item);
		return true;
	}
}
