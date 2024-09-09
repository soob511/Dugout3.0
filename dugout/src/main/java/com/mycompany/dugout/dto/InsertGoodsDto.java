package com.mycompany.dugout.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class InsertGoodsDto {
	private String goodsName;
	private int goodsPrice;
	private int goodsStock;
	private String goodsTeam;
	private String goodsCategory;
	private MultipartFile mainImg;
	private MultipartFile detailImg;
}
