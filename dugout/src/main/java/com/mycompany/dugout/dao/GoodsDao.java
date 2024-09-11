package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.PagerDto;

@Mapper
public interface GoodsDao {

	public List<GoodsDto> SelectGoodsList(PagerDto pager);

	public GoodsDto getImg(int goodsId);

	public int insertGoods(GoodsDto goods);

	public int getTotalRows();
	
}
