package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class PayItemDto {
	private int goodsId;
	private String goodsName;
	private int goodsQuantity;
	private int goodsPrice;

}
