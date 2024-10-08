package com.mycompany.dugout.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.OrderDataDto;
import com.mycompany.dugout.dto.OrderDto;
import com.mycompany.dugout.dto.OrderItemDetailDto;
import com.mycompany.dugout.dto.OrderItemDto;
import com.mycompany.dugout.dto.PayItemDto;
import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.security.UserDetail;
import com.mycompany.dugout.service.CartService;
import com.mycompany.dugout.service.GoodsService;
import com.mycompany.dugout.service.OrderService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/orderList")
	public String orderList(Model model, Authentication authentication,@RequestParam(defaultValue = "6") int recentMonth) {

		if(authentication==null) {
			return "user/loginForm";
		}
		
		String userId = authentication.getName();
		Date currentDate = new Date();		
		orderService.updateOrderStatus(currentDate);
		
		List<OrderDto> orderList = orderService.getOrderListById(userId,recentMonth);
	
	    List<List<OrderItemDetailDto>> orderItemList = new ArrayList<>();
	    
	    for (OrderDto order : orderList) {
	        Long orderId = order.getOrderId();
	        List<OrderItemDetailDto> orderItems = orderService.getOrderItemDetail(orderId);
	        orderItemList.add(orderItems); 
	    }

		model.addAttribute("orderList", orderList);
		model.addAttribute("orderItemList",orderItemList);
		
		return "mypage/orderList";
	}
	
	@GetMapping("/payment")
	public String payment(Model model,Authentication authentication,HttpSession session) {
		if(authentication==null) {
			return "user/loginForm";
		}
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
		
		
		if(orderList==null||totalPrice==0) {
			return false;
		}
		
		session.setAttribute("orderList", orderList);
		session.setAttribute("totalPrice", totalPrice);
		return true;
	}
	
	@ResponseBody
	@PostMapping("/insertOrder")
	public void insertOrder(@RequestBody OrderDataDto orderData,Authentication authentication) {
		log.info("실행");
		List<PayItemDto> orderList = orderData.getOrderList();
	    int totalPrice = orderData.getTotalPrice();
		OrderDto order = new OrderDto();
		String userId = authentication.getName();
		Long orderId = System.currentTimeMillis();
		order.setOrderId(orderId);
		order.setUserId(userId);
		order.setOrderDate(new Date());
		order.setOrderTotalPrice(totalPrice);
		order.setOrderStatus(0);
		
		orderService.insertOrder(order);
		
		for(PayItemDto item:orderList) {
			OrderItemDto orderItem = new OrderItemDto();
			orderItem.setOrderId(orderId);
			orderItem.setGoodsId(item.getGoodsId());
			orderItem.setOrderItemPrice(item.getGoodsPrice());
			orderItem.setOrderItemCount(item.getGoodsQuantity());
			orderService.insertOrderItem(orderItem);
			
			int goodsId = item.getGoodsId();
			int goodsQuantity = item.getGoodsQuantity();
			
			goodsService.updateGoodsQuantity(goodsId,goodsQuantity);
			
			cartService.deleteItem(item.getGoodsId());
			goodsService.addSaleCount(item.getGoodsId(), item.getGoodsQuantity());
		}
	}	
}
