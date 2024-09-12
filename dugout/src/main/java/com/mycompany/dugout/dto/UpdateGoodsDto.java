package com.mycompany.dugout.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UpdateGoodsDto {
	private int goodsId;
	private String goodsName;
	private String goodsTeam;
	private int goodsPrice;
	private String goodsCategory;
	private int goodsStock;
	private int goodsStatus;
	private MultipartFile MainImg;
	private MultipartFile DetailImg;

}
