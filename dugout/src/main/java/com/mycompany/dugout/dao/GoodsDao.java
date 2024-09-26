package com.mycompany.dugout.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.PagerDto;

@Mapper
public interface GoodsDao {

	public List<GoodsDto> selectGoodsList(PagerDto pager);

	public GoodsDto getImg(int goodsId);

	public int insertGoods(GoodsDto goods);

	public int getTotalRows();

	public List<GoodsDto> getTeamList(@Param("goodsTeam")String goodsTeam, @Param("pager")PagerDto pager);

	public int getTeamRows(String goodsTeam);

	public GoodsDto selectGoodsDetail(int goodsId);

	public int updateGoods(GoodsDto goods);

	public List<GoodsDto> selectBestGoods(PagerDto pager);

	public List<GoodsDto> selectRecommendGoods(PagerDto pager);

	public int getLimitRows();
	
	public int getCategoryLimitRows(String val);

	public List<GoodsDto> selectNewGoods(PagerDto pager);

	public int getTotalRowsByKeyword(String keyword);

	public List<GoodsDto> getGoodsListByKeyword(@Param("keyword")String keyword, @Param("pager")PagerDto pager);

	public List<GoodsDto> getCategoryGoodsList(@Param("categoryNum")String val, @Param("pager")PagerDto pager);

	public List<GoodsDto> getSortedGoodsList(Map<String, Object> params);

	public List<GoodsDto> getSortedCategory(@Param("category")String category, @Param("sort")String sort, @Param("pager")PagerDto pager);

}
