package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.GoodsDto;

@Mapper
public interface GoodsDao {

	public List<GoodsDto> SelectGoodsList();

	

}
