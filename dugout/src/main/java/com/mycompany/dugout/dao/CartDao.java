package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.dugout.dto.CartDto;

@Mapper
public interface CartDao {
	public int addCart(CartDto item);
	public List<CartDto> selectCartList(String userId);
	public int updateCart(CartDto updateItem);
	public int deleteItem(int goodsId);
	public int checkCartItemById(@Param("userId")String userId, @Param("goodsId")int goodsId);
	public int addCount(CartDto item);
}
