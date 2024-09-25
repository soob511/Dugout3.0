package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.dugout.dto.UpdateUserDto;
import com.mycompany.dugout.dto.UserDto;

@Mapper
public interface UserDao {
	public int join(UserDto user);
	public UserDto selectByUser(String username);
	public int idCheck(String inputId);
	public int deleteUser(String userId);
	public int updateUser(UpdateUserDto user);
	public String findId(@Param("userName") String userName,@Param("userPhone") String userPhone);
	public int getUserInfoByfindPassword(@Param("userId")String userId);
	public int updatePassword(@Param("userId") String userId,@Param("tempPassword") String tempPassword);
}
