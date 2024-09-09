package com.mycompany.dugout.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.NoticeDao;
import com.mycompany.dugout.dto.NoticeDto;
import com.mycompany.dugout.dto.PagerDto;

@Service
public class NoticeService {
	@Autowired
	private NoticeDao noticeDao;

	public void writeNotice(NoticeDto notice) {
		noticeDao.insert(notice);
	}

	public List<NoticeDto> getNoticeList(PagerDto pager) {
		List<NoticeDto> list = noticeDao.selectNoticeList(pager);
		return list;
	}

	public NoticeDto getNoticeDetail(int noticeId) {
		NoticeDto notice = noticeDao.selectNoticeDetail(noticeId);
		return notice;
	}

	public void deleteNotice(int noticeId) {
		noticeDao.delete(noticeId);
	}

	public void updateNotice(NoticeDto notice) {
		noticeDao.update(notice);
	}

	public int totalRows() {
		int rows = noticeDao.getTotalRows();
		return rows;
	}
}
