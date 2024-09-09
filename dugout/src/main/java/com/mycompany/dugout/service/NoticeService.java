package com.mycompany.dugout.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.NoticeDao;
import com.mycompany.dugout.dto.NoticeDto;

@Service
public class NoticeService {
	@Autowired
	private NoticeDao noticeDao;

	public void writeNotice(NoticeDto notice) {
		noticeDao.insert(notice);
	}

	public List<NoticeDto> getNoticeList() {
		List<NoticeDto> list = noticeDao.selectNoticeList();
		return list;
	}

	public NoticeDto getNoticeDetail(int noticeId) {
		NoticeDto notice = noticeDao.selectNoticeDetail(noticeId);
		return notice;
	}
}
