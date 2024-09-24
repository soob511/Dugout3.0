package com.mycompany.dugout.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.OrderDataDto;
import com.mycompany.dugout.dto.OrderDto;
import com.mycompany.dugout.dto.OrderItemDetailDto;
import com.mycompany.dugout.dto.OrderItemDto;
import com.mycompany.dugout.dto.PayItemDto;
import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.security.UserDetail;
import com.mycompany.dugout.service.CartService;
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
	
	@RequestMapping("/orderList")
	public String orderList(Model model, Authentication authentication) {
		String userId = authentication.getName();
		// 배송상태(orderStatus) 확인
		Date currentDate = new Date();		
		//log.info("현재날짜: " + currentDate);
		orderService.updateOrderStatus(currentDate);
		
		List<OrderDto> orderList = orderService.getOrderListById(userId);

		// 모델에 담기
		model.addAttribute("orderList", orderList);
		
		return "mypage/orderList";
	}
	
	@ResponseBody
	@RequestMapping("/getItemDetail")
	public String orderList(Model model, Long orderId, HttpSession session) {
		session.removeAttribute("orderItem");
		List<OrderItemDetailDto> orderItem = orderService.getOrderItemDetail(orderId);
		log.info(orderItem.toString());
		
		// 모델에 담기
		session.setAttribute("orderItem", orderItem);
		
		return "ok";
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
			cartService.deleteItem(item.getGoodsId());
		}

	}
	
}
