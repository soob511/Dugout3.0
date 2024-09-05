package com.mycompany.dugout.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class bannerDto {
	private int bannerId;
	private MultipartFile bannerData;
	private String bannerName;
	private String bannerType;
}
