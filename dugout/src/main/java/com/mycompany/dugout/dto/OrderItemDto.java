package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class OrderItemDto {
	private Long orderId;
	private int goodsId;
	private int orderItemPrice;
	private int orderItemCount;

}
