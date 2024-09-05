package com.mycompany.dugout.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDto {
	private String orderId;
	private String userId;
	private Date orderDate;
	private int orderTotalPrice;
	private String orderStatus;
}
