package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.GoodsLikeDto;

@Mapper
public interface GoodsLikeDao {

	public int insertLike(GoodsLikeDto goodsLike);

	public int deleteLike(GoodsLikeDto goodsLike);

}
