package com.mycompany.dugout.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.CartDto;

@Mapper
public interface CartDao {
	public int addCart(CartDto item);
	public List<CartDto> selectCartList(String userId);
	public int updateCart(CartDto updateItem);

}
