package com.mycompany.dugout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.UpdateUserDto;
import com.mycompany.dugout.dto.UserDto;
import com.mycompany.dugout.security.UserDetail;
import com.mycompany.dugout.service.UserDetailService;
import com.mycompany.dugout.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("user")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	UserDetailService userDetailService;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	@PostMapping("join")
	public String join(UserDto form) {
		UserDto user = new UserDto();
		
		user.setUserId(form.getUserId());
		
		String password = form.getUserPassword();
		
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		password = passwordEncoder.encode(password);
		user.setUserPassword(password);
		user.setUserName(form.getUserName());
		user.setUserPhone(form.getUserPhone());
		user.setUserAddress(form.getUserAddress());
		user.setUserEmail(form.getUserEmail());
		user.setUserRole("ROLE_USER");
		user.setUserActive(1);
		
		userService.join(user);
		return "redirect:/user/loginForm";
	}
	
	@ResponseBody
	@PostMapping("/idCheck")
	public boolean idCheck(String inputId) {
		boolean flag = userService.idCheck(inputId);
		return flag;
	}
	
	@RequestMapping("/findId")
	public String findId() {
		return "user/findId";
	}
	
	@RequestMapping("/findPassword")
	public String findPassword() {
		return "user/findPassword";
	}
	
	@GetMapping("userInfo")
	public String userInfo(Model model, Authentication authentication) {

		UserDetail userDetail = (UserDetail) authentication.getPrincipal();
		UserDto user = userDetail.getUser();
		log.info(String.valueOf(user));
		model.addAttribute("user",user);

		return "mypage/userInfo";
	}
	
	@PostMapping("/updateUser")
	public String updateUser(UpdateUserDto form) {
		UpdateUserDto user = new UpdateUserDto();
		
		user.setUserId(form.getUserId());
		String password = form.getUserPassword();
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		password = passwordEncoder.encode(password);
		user.setUserPassword(password);
		user.setUserName(form.getUserName());
		user.setUserPhone(form.getUserPhone());
		user.setUserEmail(form.getUserEmail());
		user.setUserAddress(form.getUserAddress());
		//DB업데이트
		userService.updateUser(user);
		//SpringSecurity Authentication 업데이트
		UserDetail userDetail = (UserDetail) userDetailService.loadUserByUsername(form.getUserId());
		Authentication authentication = 
				new UsernamePasswordAuthenticationToken(userDetail, null, userDetail.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		return "redirect:/user/userInfo";
	}
	
	@PostMapping("/deleteUser")
	public String deleteUser(Authentication authentication) {
		String userId = authentication.getName();
		userService.deleteUser(userId);
		
		return "redirect:/logout";
	}
	
	
}
