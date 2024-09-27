package com.mycompany.dugout.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@RequestMapping("/goodsDetail")
	public String goodsDetail(int goodsId, Model model) {
		GoodsDto goods = goodsService.getGoodsDetail(goodsId);
		model.addAttribute("goods",goods);
		return "/goods/goodsDetail";
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
	
	@Secured("ROLE_ADMIN")
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
	public String updateGoods(UpdateGoodsDto udGoods, int pageNo) throws IOException {
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
		return "redirect:/goods/goodsManagement?pageNo=" + pageNo;
	}
	
	@RequestMapping("/previewGoodsDetail")
	public String previewGoodsDetail() {
		log.info("실행");
		return "goods/previewGoodsDetail";
	}
	
	@RequestMapping("/teamFilter")
	public String teamFilter(String goodsTeam,Model model,@RequestParam(defaultValue="1")int pageNo) {
		int teamRows = goodsService.getTeamRows(goodsTeam);
		model.addAttribute("goodsTeam", goodsTeam);
		model.addAttribute("teamRows",teamRows);
		PagerDto pager = new PagerDto(16,5, teamRows, pageNo);
		model.addAttribute("pager",pager);
		List<GoodsDto> list = goodsService.getTeamList(goodsTeam,pager);
		model.addAttribute("list",list);
		return "/goods/teamFilter";
	}
	
	@GetMapping("/sortingTeam")
	public String sortingTeam(String goodsTeam, String sort, Model model, HttpSession session, @RequestParam(defaultValue="1")int pageNo) {
		int teamRows = goodsService.getTeamRows(goodsTeam);
		PagerDto pager = new PagerDto(16, 5,  teamRows, pageNo);
		List<GoodsDto> list =  goodsService.getSortedKeyword(goodsTeam, sort, pager);
		
		model.addAttribute("goodsTeam", goodsTeam);
		session.setAttribute("teamRows", teamRows);
		session.setAttribute("pager",pager);
		model.addAttribute("list", list);
		
		return "/goods/teamFilter";
	}
	
	@RequestMapping("/bestGoods")
	public String bestGoods(Model model,@RequestParam(defaultValue="1")int pageNo) {
		log.info("실행");
		int limitRows = goodsService.getLimitRows();
		model.addAttribute("limitRows",limitRows);
		PagerDto pager = new PagerDto(16, 5, limitRows, pageNo);
		model.addAttribute("pager",pager);
		List<GoodsDto> list =  goodsService.getBestGoods(pager);
		model.addAttribute("list",list);
		return "/goods/bestGoods";
	}
	
	@RequestMapping("/newGoods")
	public String newProduct(Model model,@RequestParam(defaultValue="1")int pageNo) {
		log.info("실행");
		int limitRows = goodsService.getLimitRows();
		model.addAttribute("limitRows",limitRows);
		PagerDto pager = new PagerDto(16, 5, limitRows, pageNo);
		model.addAttribute("pager",pager);
		List<GoodsDto> list =  goodsService.getNewGoods(pager);
		model.addAttribute("list",list);
		return "/goods/newGoods";
	}
	
	@RequestMapping("/recommendGoods")
	public String recommendProduct(Model model,@RequestParam(defaultValue="1")int pageNo) {
		log.info("실행");
		int limitRows = goodsService.getLimitRows();
		model.addAttribute("limitRows",limitRows);
		PagerDto pager = new PagerDto(16, 5, limitRows, pageNo);
		model.addAttribute("pager",pager);
		List<GoodsDto> list =  goodsService.getRecommendGoods(pager);
		model.addAttribute("list",list);
		return "/goods/recommendGoods";
	}
	
	@Secured("ROLE_ADMIN")
	@RequestMapping("/goodsManagement")
	public String goodsManagement(@RequestParam(required = false) String inputKeyword, Model model, @RequestParam(defaultValue="1") int pageNo, HttpSession session) {
	if (inputKeyword == null) {
			log.info("키워드:" + session.getAttribute("keywords"));
			int totalRows = goodsService.getTotalRows();
			session.setAttribute("totalRows", totalRows);
			PagerDto pager = new PagerDto(10, 5, totalRows, pageNo);
			session.setAttribute("pager", pager);
			
			List<GoodsDto> goods = goodsService.getGoodsList(pager);
			model.addAttribute("goods", goods);
			
			String[] categories = {"유니폼", "의류", "모자", "응원용품", "잡화"};
			String[] teams = 
				{ "기아 타이거즈", "두산 베어스", "한화 이글스", "엔씨 다이노스",  "키움 히어로즈", 
				   "엘지 트윈스", "SSG 랜더스", "케이티 위즈", "롯데 자이언츠", "삼성 라이온즈", "국가대표"};		
			session.setAttribute("categories", categories);
			session.setAttribute("teams", teams);
			return "goods/goodsManagement";
		} else {
			return searchGoodsManagement(inputKeyword, model, session, 1);
		}
	}
	
	@RequestMapping("/searchGoods")
	public String searchGoods(String inputKeyword, Model model, HttpSession session, @RequestParam(defaultValue="1") int pageNo) {
		session.setAttribute("keyword", inputKeyword.trim());		
		String keyword = (String) session.getAttribute("keyword");
		int totalRows = goodsService.getTotalRowsByKeyword(keyword);
		session.setAttribute("totalRows", totalRows);
		
		PagerDto pager = new PagerDto(16, 5, totalRows, pageNo);
		session.setAttribute("pager", pager);
		
		List<GoodsDto> list = goodsService.getGoodsListByKeyword(inputKeyword, pager);
		session.setAttribute("list", list);
		
		return "goods/searchGoods";
	}
	
	@GetMapping("/sortingSearch")
	public String sortingSearch(@RequestParam String keyword, @RequestParam String sort, Model model, @RequestParam(defaultValue="1")int pageNo) {
		int totalRows = goodsService.getTotalRowsByKeyword(keyword);
		model.addAttribute("totalRows", totalRows);
		
		PagerDto pager = new PagerDto(16, 5, totalRows, pageNo);
		model.addAttribute("pager", pager);
		
		List<GoodsDto> list =  goodsService.getSortedKeyword(keyword, sort, pager);
		model.addAttribute("list", list);

		return "goods/searchGoods";
	}
	
	
	@RequestMapping("/searchGoodsManagement")
	public String searchGoodsManagement(@RequestParam String inputKeyword, Model model, HttpSession session, @RequestParam(defaultValue="1") int pageNo) {
		log.info("keywords: " + inputKeyword);
	    session.setAttribute("keywords", inputKeyword);		
	    String keyword = (String) session.getAttribute("keywords");
	    
	    int totalRows = goodsService.getTotalRowsByKeyword(keyword);
	    
	    PagerDto pager = new PagerDto(10, 5, totalRows, pageNo);
	    session.setAttribute("pager", pager);
	    
	    List<GoodsDto> searchGoods = goodsService.getGoodsListByKeyword(keyword, pager);
	    log.info("searchGoods: " + searchGoods);
	    model.addAttribute("goods", null);
	    model.addAttribute("searchGoods", searchGoods);
 
	    return "goods/goodsManagement";
	}
	
	
	
	@GetMapping("/category")
	public String category(@RequestParam String category, Model model, @RequestParam(defaultValue="1")int pageNo) {
		int limitRows = goodsService.getCategoryLimitRows(category);
		model.addAttribute("limitRows", limitRows);
		PagerDto pager = new PagerDto(16, 5, limitRows, pageNo);
		model.addAttribute("pager", pager);
		List<GoodsDto> list =  goodsService.getCategoryGoodsList(category, pager);
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		return "goods/goodsCategory";
	}
	
	@GetMapping("/sortingCategory")
		public String sortingCategory(@RequestParam String category, @RequestParam String sort, Model model, @RequestParam(defaultValue="1")int pageNo) {
		model.addAttribute("category", category);
		int limitRows = goodsService.getCategoryLimitRows(category);
		model.addAttribute("limitRows", limitRows);
		PagerDto pager = new PagerDto(16, 5, limitRows, pageNo);
		model.addAttribute("pager", pager);
		List<GoodsDto> list =  goodsService.getSortedCategory(category, sort, pager);
		model.addAttribute("list", list);
	
		return"goods/goodsCategory";
	}
	
	@GetMapping("/sortingGoods")
	public String sortingGoods(@RequestParam String kind, @RequestParam String sort, Model model, @RequestParam(defaultValue="1")int pageNo) {
		model.addAttribute("limitRows", 32);
		PagerDto pager = new PagerDto(16, 5, 32, pageNo);
		model.addAttribute("pager", pager);
		List<GoodsDto> list =  goodsService.getSortedGoodsList(kind, sort, pager);
		model.addAttribute("list", list);

		String url ="goods/bestGoods";
		
		if(kind.equals("new")) {url = "goods/newGoods";} 
		else if(kind.equals("rec")) {url = "goods/recommendGoods";} 
		return url;	
	}
}
