package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.CartDto;

@Mapper
public interface CartDao {
	public int addCart(CartDto item);

}
