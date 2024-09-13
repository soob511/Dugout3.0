package com.mycompany.dugout.security;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.mycompany.dugout.dto.UserDto;

public class UserDetail extends User{
	private UserDto user;

	
	public UserDetail(UserDto user, List<GrantedAuthority> authorities) {
		super(user.getUserId(),
				user.getUserPassword(),
				true,true,true,true,
				authorities);
		this.user= user;
	}

	public UserDto getUser() {
		return user;
	}

}
