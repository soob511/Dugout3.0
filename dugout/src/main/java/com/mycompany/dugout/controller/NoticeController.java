package com.mycompany.dugout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String noticeList(Model model) {
		log.info("공지사항 목록");
		List<NoticeDto> list = noticeService.getNoticeList();
		System.out.println(list);
		model.addAttribute("list",list);
		return "notice/noticeList";
	}
	
	@GetMapping("/writeNoticeForm")
	public String writeNoticeForm() {
		return "notice/noticeForm";
	}
	
	@PostMapping("/writeNotice")
	public String writeNotice(NoticeDto form) throws Exception {
		NoticeDto notice = new NoticeDto();
		notice.setNoticeTitle(form.getNoticeTitle());
		notice.setNoticeContent(form.getNoticeContent());

		noticeService.writeNotice(notice);	
		return "notice/noticeList";
	}
}
