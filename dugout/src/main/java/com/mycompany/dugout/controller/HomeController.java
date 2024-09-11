package com.mycompany.dugout.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
public class HomeController {
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("")
	public String index(Model model,@RequestParam(defaultValue="1")int pageNo) {
		log.info("실행");
		int totalRows = goodsService.getTotalRows();
		PagerDto pager = new PagerDto(16, 5, totalRows, pageNo);
		model.addAttribute("pager",pager);
		List<GoodsDto> list =  goodsService.getGoodsList(pager);
		model.addAttribute("list",list);
		return "index";
	}
}
