package com.mycompany.dugout.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderDataDto {
	private List<PayItemDto> orderList;
	private int totalPrice;

}
