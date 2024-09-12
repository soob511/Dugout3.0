package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.UserDto;

@Mapper
public interface UserDao {
	public int join(UserDto user);
}
