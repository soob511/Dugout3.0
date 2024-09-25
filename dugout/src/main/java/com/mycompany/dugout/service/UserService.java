package com.mycompany.dugout.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.UserDao;
import com.mycompany.dugout.dto.UpdateUserDto;
import com.mycompany.dugout.dto.UserDto;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public void join(UserDto user) {
		userDao.join(user);
	}

	public boolean idCheck(String inputId) {
		int result = userDao.idCheck(inputId);
		
		if(result != 0) {
			return false;
		} return true;
	}

	public void deleteUser(String userId) {
		userDao.deleteUser(userId);
	}

	public void updateUser(UpdateUserDto user) {
		userDao.updateUser(user);
	}
}
