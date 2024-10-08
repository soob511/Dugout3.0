package com.mycompany.dugout.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.dugout.dto.OrderDto;
import com.mycompany.dugout.dto.OrderItemDto;
import com.mycompany.dugout.dto.OrderItemDetailDto;

@Mapper
public interface OrderDao {

	public int insertOrder(OrderDto order);

	public int insertOrderItem(OrderItemDto orderItem);

	public List<OrderDto> getOrderListById(@Param("userId") String userId,@Param("recentMonth") int recentMonth);

	public int updateOrderStatus(Date date);

	public List<OrderItemDetailDto> getOrderItemDetail(Long orderId);

	
}
