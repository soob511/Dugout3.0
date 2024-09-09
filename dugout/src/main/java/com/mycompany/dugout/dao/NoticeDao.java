package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.NoticeDto;
import com.mycompany.dugout.dto.PagerDto;

@Mapper
public interface NoticeDao {
	public int insert(NoticeDto notice);
	public List<NoticeDto> selectNoticeList(PagerDto pager);
	public NoticeDto selectNoticeDetail(int noticeId);
	public int delete(int noticeId);
	public int update(NoticeDto notice);
	public int getTotalRows();
}
