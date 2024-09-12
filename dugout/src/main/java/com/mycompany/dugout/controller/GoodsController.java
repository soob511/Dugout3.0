package com.mycompany.dugout.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.InsertGoodsDto;
import com.mycompany.dugout.dto.PagerDto;
import com.mycompany.dugout.dto.UpdateGoodsDto;
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
	
	@ RequestMapping("/getDetailImg")
	public void getDetailImg(int goodsId,HttpServletResponse response) throws Exception{
		GoodsDto goods = goodsService.getImg(goodsId);
		String contentType = goods.getGoodsDetailType();
		response.setContentType(contentType);
		OutputStream out = response.getOutputStream();
		out.write(goods.getGoodsDetailData());
		out.flush();
		out.close();
	}
	
	@RequestMapping("/goodsAdd")
	public String goodsAdd() {
		log.info("실행");
		return "/goods/goodsAdd";
	}
	
	@PostMapping("insertGoods")
	public String insertGoods(InsertGoodsDto form) throws IOException {
		log.info("실행");
		GoodsDto goods = new GoodsDto();
		goods.setGoodsTeam(form.getGoodsTeam());
		goods.setGoodsName(form.getGoodsName());
		goods.setGoodsCategory(form.getGoodsCategory());
		goods.setGoodsPrice(form.getGoodsPrice());
		goods.setGoodsStock(form.getGoodsStock());
		goods.setGoodsPrice(form.getGoodsPrice());
	
		
		MultipartFile main = form.getMainImg();
		goods.setGoodsMainName(main.getOriginalFilename());
		goods.setGoodsMainType(main.getContentType());
		goods.setGoodsMainData(main.getBytes());
		
		MultipartFile detail = form.getDetailImg();
		goods.setGoodsDetailName(detail.getOriginalFilename());
		goods.setGoodsDetailType(detail.getContentType());
		goods.setGoodsDetailData(detail.getBytes());
		
		goodsService.insertGoods(goods);
		
		return "goods/goodsAdd";
	}
	
	@PostMapping("/updateGoods")
	public String updateGoods(UpdateGoodsDto udGoods) throws IOException {
		log.info("실행");
		GoodsDto goods = new GoodsDto();
		goods.setGoodsId(udGoods.getGoodsId());
		goods.setGoodsName(udGoods.getGoodsName());
		goods.setGoodsTeam(udGoods.getGoodsTeam());
		goods.setGoodsCategory(udGoods.getGoodsCategory());
		goods.setGoodsPrice(udGoods.getGoodsPrice());
		goods.setGoodsStock(udGoods.getGoodsStock());
		goods.setGoodsStatus(udGoods.getGoodsStatus());
		
		MultipartFile main = udGoods.getMainImg();
		if(!main.isEmpty()) {
			goods.setGoodsMainName(main.getOriginalFilename());
			goods.setGoodsMainType(main.getContentType());
			goods.setGoodsMainData(main.getBytes());
		}
		
		MultipartFile detail = udGoods.getDetailImg();
		if(!detail.isEmpty()) {
			goods.setGoodsDetailName(detail.getOriginalFilename());
			goods.setGoodsDetailType(detail.getContentType());
			goods.setGoodsDetailData(detail.getBytes());
		}
		
		goodsService.updateGoods(goods);
		return "redirect:/admin";
	}
	
	@RequestMapping("/teamFilter")
	public String teamFilter(String goodsTeam,Model model,@RequestParam(defaultValue="1")int pageNo) {
		int teamRows = goodsService.getTeamRows(goodsTeam);
		model.addAttribute("teamRows",teamRows);
		PagerDto pager = new PagerDto(16,5, teamRows, pageNo);
		model.addAttribute("pager",pager);
		List<GoodsDto> list = goodsService.getTeamList(goodsTeam,pager);
		model.addAttribute("list",list);
		return "/goods/teamFilter";
	}
	
	@RequestMapping("/bestGoods")
	public String bestProduct() {
		log.info("실행");
		return "/goods/bestGoods";
	}
	
	@RequestMapping("/newGoods")
	public String newProduct() {
		log.info("실행");
		return "/goods/newGoods";
	}
	
	@RequestMapping("/recommendGoods")
	public String recommendProduct() {
		log.info("실행");
		return "/goods/recommendGoods";
	}
	
	@RequestMapping("/goodsDetail")
	public String goodsDetail(int goodsId, Model model) {
		GoodsDto goods = goodsService.getGoodsDetail(goodsId);
		model.addAttribute("goods",goods);
		return "/goods/goodsDetail";
	}
}
