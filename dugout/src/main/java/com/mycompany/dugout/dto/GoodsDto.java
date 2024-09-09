package com.mycompany.dugout.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class GoodsDto {
	private int goodsId;
	private String goodsName;
	private String goodsTeam;
	private int goodsPrice;
	private String goodsCategory;
	private int goodsStock;
	private int goodsStatus;
	private byte[]  goodsMainData;
	private String goodsMainName;
	private String goodsMainType;
	private byte[]  goodsDetailData;
	private String goodsDetailName;
	private String goodsDetailType;
	private Date goodsRegDate ;
	private int goodsLikeCount;
	private int goodsSaleCount;
}
