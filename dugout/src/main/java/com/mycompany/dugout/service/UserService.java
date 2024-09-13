package com.mycompany.dugout.service;

import java.util.List;

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

	public boolean idCheck(String inputId) {
		List<String> userIdList = userDao.idCheck();
		boolean flag = true;
		if(inputId == null) {
			flag = false;
		}
		for(String userId:userIdList) {
			if (userId.equals(inputId))
				flag = false;
			}
		return flag;
	}
}
