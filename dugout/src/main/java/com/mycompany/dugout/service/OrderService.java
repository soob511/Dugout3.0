package com.mycompany.dugout.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.OrderDao;
import com.mycompany.dugout.dto.OrderDto;
import com.mycompany.dugout.dto.OrderItemDto;

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

}
