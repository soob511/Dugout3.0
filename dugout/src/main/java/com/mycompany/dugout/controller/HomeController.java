package com.mycompany.dugout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.service.GoodsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("")
	public String index(Model model) {
		log.info("실행");
		List<GoodsDto> list =  goodsService.getGoodsList();
		model.addAttribute("list",list);
		return "index";
	}
}
