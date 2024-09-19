package com.mycompany.dugout.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UpdateBannerDto {
	private MultipartFile firstBanner;
	private MultipartFile secondBanner;
	private MultipartFile thirdBanner;
	

}
