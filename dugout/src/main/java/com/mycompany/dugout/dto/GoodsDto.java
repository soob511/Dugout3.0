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
	private MultipartFile goodsMainData;
	private String goodsMainName;
	private String goodsMainType;
	private MultipartFile goodsDetailData;
	private String goodsDetailName;
	private String goodsdetailtype;
	private Date goodsregdate ;
	private int goodslikecount;
	private int goodssalecount;
}
