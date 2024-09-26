package com.mycompany.dugout.service;

import java.nio.file.attribute.UserPrincipal;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.UserDao;
import com.mycompany.dugout.dto.UpdateUserDto;
import com.mycompany.dugout.dto.UserDto;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	 @Autowired
	    private JavaMailSender mailSender;

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

	public String findId(String userName, String userPhone) {
		String userId = userDao.findId(userName,userPhone);
		return userId;
	}

	public String getUserInfoByfindPassword(String userId, String userPhone) {
		String userEmail = userDao.getUserInfoByfindPassword(userId,userPhone);
		return userEmail;
	}

	public void sendPasswordEmail(String userId, String userEmail) {
		 String tempPassword = UUID.randomUUID().toString().substring(0, 8);
		 
		 SimpleMailMessage message = new SimpleMailMessage();
		 message.setFrom("alsdn0511@naver.com"); 
		 message.setTo(userEmail);
		 message.setSubject("dugout 임시 비밀번호 발급 안내");
		 message.setText("임시 비밀번호는 " + tempPassword+ " 입니다. 로그인 후 비밀번호를 변경해주세요.");
		 mailSender.send(message);
		 
		 
		 PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		 tempPassword = passwordEncoder.encode(tempPassword);
		 
		 userDao.updatePassword(userId,tempPassword);
		 
		
		 
	}
}
