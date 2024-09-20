package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.GoodsLikeDto;
import com.mycompany.dugout.dto.PagerDto;

@Mapper
public interface GoodsLikeDao {
	public int insertLike(GoodsLikeDto goodsLike);
	public int deleteLike(GoodsLikeDto goodsLike);
	public int getLikeRowsById(String userId);
	public List<GoodsDto> getLikeItemList(@Param("userId") String userId, @Param("pager") PagerDto pager);
}
