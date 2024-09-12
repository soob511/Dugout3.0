package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class UpdateNoticeDto {
	private int noticeId;
	private String noticeTitle;
	private String noticeContent;
}
