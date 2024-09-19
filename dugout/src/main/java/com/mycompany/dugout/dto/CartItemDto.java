package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class CartItemDto {
	private String userId;
	private int goodsId;
	private int cartCount;
	private String goodsName;
	private String goodsTeam;
	private int goodsPrice;
}
