package com.mycompany.dugout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.PagerDto;
import com.mycompany.dugout.service.GoodsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("")
	public String myMain(Model model, @RequestParam(defaultValue="1") int pageNo, HttpSession session) {
		int totalRows = goodsService.getTotalRows();
		PagerDto pager = new PagerDto(10, 5, totalRows, pageNo);
		session.setAttribute("pager", pager);
		
		List<GoodsDto> goods = goodsService.getGoodsList(pager);
		model.addAttribute("goods", goods);
		
		String[] categories = {"유니폼", "의류", "모자", "응원용품", "잡화"};
		String[] teams = 
			{ "기아 타이거즈", "두산 베어스", "한화 이글스", "엔씨 다이노스",  "키움 히어로즈", 
			   "엘지 트윈스", "SSG 랜더스", "케이티 위즈", "롯데 자이언츠", "삼성 라이온즈", "국가대표"};		
		model.addAttribute("categories", categories);
		model.addAttribute("teams", teams);
		return "admin/mainManagement";
	}
	
	@RequestMapping("/bannerManagement")
	public String  bannerManagement() {
		log.info("실행");
		return "admin/bannerManagement";
	}
	
	@RequestMapping("/headerManagement")
	public String  headerManagement() {
		log.info("실행");
		return "admin/headerManagement";
	}
	
	@RequestMapping("/previewBanner")
	public String  previewBanner() {
		log.info("실행");
		return "admin/previewBanner";
	}
}
