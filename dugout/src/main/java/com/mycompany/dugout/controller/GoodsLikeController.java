package com.mycompany.dugout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.GoodsLikeDto;
import com.mycompany.dugout.service.GoodsLikeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("goodsLike")
public class GoodsLikeController {
	
	@Autowired
	GoodsLikeService goodsLikeService;
	
	@RequestMapping("")
	public String goodsLike() {
		return "mypage/goodsLike";
	}
	
	@ResponseBody
	@PostMapping("/like")
	public boolean like(int goodsId, boolean isLiked,Authentication authentication) {
		if(authentication==null) {
			return false;
		}
		GoodsLikeDto goodsLike = new GoodsLikeDto();
		String userId = authentication.getName();
		goodsLike.setUserId(userId);
		goodsLike.setGoodsId(goodsId);		
		if(isLiked) {
			goodsLikeService.addLike(goodsLike);
		}else {
			goodsLikeService.deleteLike(goodsLike);
		}
		return true;
	}
	
	@ResponseBody
	@PostMapping("/checkLike")
	public boolean checkLike(int goodsId,Authentication authentication) {
		log.info("실행");
		String userId = authentication.getName();
		GoodsLikeDto goodsLike = new GoodsLikeDto();
		goodsLike.setGoodsId(goodsId);
		goodsLike.setUserId(userId);
		int count = goodsLikeService.getIsLike(goodsLike);
		if(count==0||authentication==null) {
			return false;
		}
		return true;
	}
	
}
