package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class BannerDto {
	private int bannerId;
	private byte[] bannerData;
	private String bannerName;
	private String bannerType;
}
