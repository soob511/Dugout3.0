package com.mycompany.dugout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.dugout.dto.NoticeDto;
import com.mycompany.dugout.dto.PagerDto;
import com.mycompany.dugout.dto.UpdateNoticeDto;
import com.mycompany.dugout.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/noticeList")
	public String noticeList(Model model, @RequestParam(defaultValue="1") int pageNo, HttpSession session) {
		int totalRows = noticeService.totalRows();
		PagerDto pager = new PagerDto(10, 3, totalRows, pageNo);
		session.setAttribute("pager", pager);
		
		List<NoticeDto> list = noticeService.getNoticeList(pager);
		model.addAttribute("list",list);
		return "notice/noticeList";
	}
	
	@GetMapping("/noticeHitCount")
	public String noticeHitCount(int noticeId,Model model) {
		noticeService.updateHitCount(noticeId);
		return noticeDetail(noticeId,model);
	}
	
	@GetMapping("/noticeDetail")
	public String noticeDetail(int noticeId,Model model) {
		log.info("공지사항 상세");
		NoticeDto notice = noticeService.getNoticeDetail(noticeId);
		model.addAttribute("notice",notice);
		return "notice/noticeDetail";
	}
	
	@Secured("ROLE_ADMIN")
	@GetMapping("/writeNoticeForm")
	public String writeNoticeForm() {
		return "notice/noticeForm";
	}
	
	@Secured("ROLE_ADMIN")
	@PostMapping("/writeNotice")
	public String writeNotice(NoticeDto form) throws Exception {
		NoticeDto notice = new NoticeDto();
		notice.setNoticeTitle(form.getNoticeTitle());
		notice.setNoticeContent(form.getNoticeContent());

		noticeService.writeNotice(notice);	
		return "redirect:/notice/noticeList";
	}
	
	@Secured("ROLE_ADMIN")
	@GetMapping("/updateNoticeForm")
	public String updateNotice(int noticeId, Model model) {
		NoticeDto notice = noticeService.getNoticeDetail(noticeId);
		model.addAttribute("notice", notice);
		return "notice/updateNoticeForm";
	}
	
	@Secured("ROLE_ADMIN")
	@PostMapping("/updateNotice")
	public String updateNotice(UpdateNoticeDto form) {
		noticeService.updateNotice(form);		
		return "redirect:/notice/noticeDetail?noticeId=" + form.getNoticeId();
	}
	
	@Secured("ROLE_ADMIN")
	@GetMapping("/deleteNotice")
	public String deleteNotice(int noticeId) {
		noticeService.deleteNotice(noticeId);
		return "redirect:/notice/noticeList";
	}
}
