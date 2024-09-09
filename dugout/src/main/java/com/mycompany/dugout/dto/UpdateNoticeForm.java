package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class UpdateNoticeForm {
	private int noticeId;
	private String noticeTitle;
	private String noticeContent;
}
