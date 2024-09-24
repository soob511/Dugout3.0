package com.mycompany.dugout.dto;

import java.time.LocalDateTime;
import java.util.Date;

import lombok.Data;

@Data
public class OrderDto {
	private Long orderId;
	private String userId;
	private Date orderDate;
	private int orderTotalPrice;
	private int orderStatus;
}
