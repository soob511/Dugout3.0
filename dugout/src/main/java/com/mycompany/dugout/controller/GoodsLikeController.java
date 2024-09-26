package com.mycompany.dugout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.GoodsLikeDto;
import com.mycompany.dugout.dto.PagerDto;
import com.mycompany.dugout.service.GoodsLikeService;
import com.mycompany.dugout.service.GoodsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("goodsLike")
public class GoodsLikeController {
	
	@Autowired
	GoodsLikeService goodsLikeService;
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping("")
	public String goodsLike(Authentication authentication, 
								      @RequestParam(defaultValue="1") int pageNo, 
									  HttpSession session, Model model) {
		
		if(authentication==null) {
			return "user/loginForm";
		}
		
		String userId = authentication.getName();
		int likeTotalRows = goodsLikeService.getLikeRowsById(userId);
		PagerDto pager = new PagerDto(5, 3, likeTotalRows, pageNo);
		session.setAttribute("pager", pager);

		List<GoodsDto> likeList = goodsLikeService.getLikeItemList(userId, pager);		
		model.addAttribute("likeList", likeList);
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
			goodsLikeService.addLikeCount(goodsId);
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
	
	@ResponseBody
	@PostMapping("/deleteLike")
	public String deleteLike(int goodsId, Authentication authentication) {
		GoodsLikeDto goodsLike = new GoodsLikeDto();
		
		goodsLike.setUserId(authentication.getName());
		goodsLike.setGoodsId(goodsId);
		
		goodsLikeService.deleteLike(goodsLike);
		return "redirect:/goodsLike";
	}
	
	@ResponseBody
	@PostMapping("/deleteAllLikes")
	public String deleteAllLikes(Authentication authentication) {
		String userId = authentication.getName();
		goodsLikeService.deleteAllLikes(userId);
		return "redirect:/goodsLike";
	}
	
}
