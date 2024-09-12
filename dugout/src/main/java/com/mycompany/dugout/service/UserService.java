package com.mycompany.dugout.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.UserDao;
import com.mycompany.dugout.dto.UserDto;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public void join(UserDto user) {
		userDao.join(user);
	}

}
