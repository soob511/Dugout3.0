package com.mycompany.dugout.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.service.GoodsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("getImg")
	public void getImg(int goodsId,HttpServletResponse response) throws Exception {
		GoodsDto goods = goodsService.getImg(goodsId);
		String contentType = goods.getGoodsMainType();
		response.setContentType(contentType);
		OutputStream out = response.getOutputStream();
		out.write(goods.getGoodsMainData());
		out.flush();
		out.close();
	}
	
	@RequestMapping("/goodsAdd")
	public String goodsAdd() {
		log.info("실행");
		return "/goods/goodsAdd";
	}
	
	@PostMapping("insertGoods")
	public String insertGoods() {
		
		return "goods/goodsAdd";
	}
	
	
	
	
	@RequestMapping("")
	public String cart() {
		log.info("장바구니");
		return "cart/cart";
	}
}
