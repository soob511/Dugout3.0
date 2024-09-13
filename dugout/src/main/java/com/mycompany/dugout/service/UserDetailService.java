package com.mycompany.dugout.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.UserDao;
import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.security.UserDetail;


@Service
public class UserDetailService implements UserDetailsService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserDto user = userDao.selectByUser(username);
		
		if(user==null) {
			throw new UsernameNotFoundException("Bad credentials");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority(user.getUserRole()));
		UserDetails userDetails = new UserDetail(user,authorities);
		return userDetails;
	}

}
