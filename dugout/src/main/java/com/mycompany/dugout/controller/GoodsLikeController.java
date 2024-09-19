package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("goodsLike")
public class GoodsLikeController {
	
	@RequestMapping("")
	public String goodsLike() {
		return "mypage/goodsLike";
	}
}
