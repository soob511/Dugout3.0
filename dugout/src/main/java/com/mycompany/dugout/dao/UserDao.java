package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.UpdateUserDto;
import com.mycompany.dugout.dto.UserDto;

@Mapper
public interface UserDao {
	public int join(UserDto user);
	public UserDto selectByUser(String username);
	public int idCheck(String inputId);
	public int deleteUser(String userId);
	public int updateUser(UpdateUserDto user);
}
