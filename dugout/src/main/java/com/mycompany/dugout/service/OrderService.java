package com.mycompany.dugout.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.OrderDao;
import com.mycompany.dugout.dto.OrderDto;
import com.mycompany.dugout.dto.OrderItemDto;

import lombok.extern.slf4j.Slf4j;

import com.mycompany.dugout.dto.OrderItemDetailDto;

@Slf4j
@Service
public class OrderService {
	@Autowired
	private OrderDao orderDao;

	public void insertOrder(OrderDto order) {
		orderDao.insertOrder(order);
	}

	public void insertOrderItem(OrderItemDto orderItem) {
		orderDao.insertOrderItem(orderItem);		
	}

	public List<OrderDto> getOrderListById(String userId) {
		List<OrderDto> orderList = orderDao.getOrderListById(userId);
		return orderList;
	}

	public void updateOrderStatus(Date date) {
		log.info("date:" + date);
		orderDao.updateOrderStatus(date);
	}

	public List<OrderItemDetailDto> getOrderItemDetail(Long orderId) {
		List<OrderItemDetailDto> orderItemDetails = orderDao.getOrderItemDetail(orderId);
		return orderItemDetails;
	}

}
