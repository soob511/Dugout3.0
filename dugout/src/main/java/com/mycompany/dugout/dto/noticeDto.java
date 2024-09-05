package com.mycompany.dugout.dto;

import java.util.Date;

import lombok.Data;

@Data
public class noticeDto {
	private int noticeId;
	private String noticeTitle;
	private String noticeContent;
	private int noticeHitCount;
	private Date noticeRegDate;
}
