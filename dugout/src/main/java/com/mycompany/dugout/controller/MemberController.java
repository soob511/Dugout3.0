package com.mycompany.dugout.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.miniproject.dto.JoinFormDto;
import com.mycompany.miniproject.dto.JoinFormValidator;
import com.mycompany.miniproject.dto.MemberDto;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/Member")
@Slf4j
public class MemberController {
		
	@RequestMapping("/login")
	public String login() {
		log.info("로그인실행");
		return "member/login";
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		log.info("회원가입페이지 실행");
		return "member/joinForm";
	}
	
	@InitBinder("joinFormDto")
	public void joinFormDto(WebDataBinder binder) {
		binder.setValidator(new JoinFormValidator());
	}
	
	@RequestMapping("/join")
	public String join(
			//MemberDto dto,HttpServletResponse response,
			@Valid JoinFormDto joinForm,Errors errors) throws IOException {
		if(errors.hasErrors()) {
			log.info("유효성검사 실패");
			return "member/joinForm";
		}
//		log.info("회원가입 실행");
//		log.info(dto.toString());
//		JSONObject jsonObject = new JSONObject();
//		jsonObject.put("result", "ok");
//		String json = jsonObject.toString();
//		
//		response.setContentType("application/json; charset=UTF-8");
//		PrintWriter pw = response.getWriter();
//		pw.println(json);
//		pw.flush();
//		pw.close();
		return "redirect:/";
	}
	
	@RequestMapping("/findId")
	public String findId() {
		log.info("아이디찾기 실행");
		return "member/findId";
	}
	
	@RequestMapping("/findPw")
	public String findPw() {
		log.info("비밀번호찾기실행");
		return "member/findPw";
	}
	
	@RequestMapping("/memberInformation")
	public String lookUpMember() {
		log.info("회원정보");
		return "member/memberInformation";
	}
}
