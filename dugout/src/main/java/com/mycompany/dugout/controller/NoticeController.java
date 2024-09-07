package com.mycompany.dugout.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.dugout.dto.NoticeDto;
import com.mycompany.dugout.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/noticeList")
	public String noticeList() {
		log.info("공지사항 목록");
		return "notice/noticeList";
	}
	
	@GetMapping("/writeNoticeForm")
	public String writeNoticeForm() {
		return "notice/noticeForm";
	}
	
	@PostMapping("/writeNotice")
	public String writeNotice(NoticeDto form, HttpSession session) throws Exception {
		NoticeDto notice = new NoticeDto();
		notice.setNoticeTitle(form.getNoticeTitle());
		notice.setNoticeContent(form.getNoticeContent());

		noticeService.writeNotice(notice);	
		return "notice/noticeList";
	}
}
