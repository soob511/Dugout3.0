package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.NoticeDto;

@Mapper
public interface NoticeDao {
	public int insert(NoticeDto notice);
}
