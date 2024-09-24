package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.OrderDto;
import com.mycompany.dugout.dto.OrderItemDto;

@Mapper
public interface OrderDao {

	public int insertOrder(OrderDto order);

	public int insertOrderItem(OrderItemDto orderItem);

}
