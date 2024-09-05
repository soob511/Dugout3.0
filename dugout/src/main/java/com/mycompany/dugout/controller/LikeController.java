package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("Like")
public class LikeController {
	
	@RequestMapping("")
	public String likeList() {
		log.info("찜목록실행");
		return "like/likeList";
	}

}
