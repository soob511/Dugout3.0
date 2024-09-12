package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.PagerDto;

@Mapper
public interface GoodsDao {

	public List<GoodsDto> SelectGoodsList(PagerDto pager);

	public GoodsDto getImg(int goodsId);

	public int insertGoods(GoodsDto goods);

	public int getTotalRows();

	public List<GoodsDto> getTeamList(@Param("goodsTeam")String goodsTeam, @Param("pager")PagerDto pager);

	public int getTeamRows(String goodsTeam);

	public GoodsDto selectGoodsDetail(int goodsId);
	
}
