package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class OrderItemDetailDto {
	private Long orderId;
	private int goodsId;
	private int orderItemPrice;
	private int orderItemCount;
	private String goodsName;
	private String goodsTeam;
}
