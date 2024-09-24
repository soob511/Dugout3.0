package com.mycompany.dugout.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@GetMapping("/cartCount")
	public int cartCount(Authentication authentication) {
		 if (authentication != null && authentication.isAuthenticated()) {
	            String userId = authentication.getName();
	            return cartService.getCartCount(userId); 
	        }
	        return 0;
	}
	
	@ResponseBody
	@PostMapping("/addCart")
	public boolean addCart(Authentication authentication, int goodsId, int cartCount) {
		if (authentication == null || !authentication.isAuthenticated()) {
			return false;
	    }
		String userId = authentication.getName();
				
		boolean flag = cartService.checkCartItemById(userId, goodsId);
		
		CartDto item = new CartDto();
		
		item.setUserId(userId);
		item.setGoodsId(goodsId);
		item.setCartCount(cartCount);
				
		if(!flag) {
			cartService.addCart(item);
		} else {
			cartService.addCount(item);
		}
		return true;
	}
	
	@ResponseBody
	@RequestMapping("/updateCart")
	public String updateCart(int goodsId, int cartCount, Authentication authentication) {
		CartDto updateItem = new CartDto();
		
		updateItem.setUserId(authentication.getName());
		updateItem.setGoodsId(goodsId);
		updateItem.setCartCount(cartCount);
		
		cartService.updateCart(updateItem);
		
		return "ok";
	}
	
	@ResponseBody
	@PostMapping("/deleteCart")
	public boolean deleteCart(int[] checkList) {
		if(checkList==null) {
			return false;
		}else {
			for(int goodsId : checkList){
				cartService.deleteItem(goodsId);
			}	
		}
		return true;
	}
}
