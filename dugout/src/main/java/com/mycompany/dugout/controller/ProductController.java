package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/Product")
public class ProductController {
	
	@RequestMapping("/allProduct")
	public String allProduct() {
		log.info("전체상품");
		return "product/allProduct";
	}
	
	@RequestMapping("/newProduct")
	public String newProduct() {
		log.info("신상품");
		return "product/newProduct";
	}
	
	@RequestMapping("/recommendProduct")
	public String recommedProduct() {
		log.info("추천상품");
		return "product/recommendProduct";
	}
	
	@RequestMapping("/bestProduct")
	public String bestProduct() {
		log.info("베스트상품");
		return "product/bestProduct";
	}
	
	@RequestMapping("/dusanProduct")
	public String dusanProduct() {
		log.info("두산상품");
		return "product/dusanProduct";
	}
	
	@RequestMapping("/manageProduct")
	public String manageProduct() {
		log.info("상품관리");
		return "product/manageProduct";
	}
	
	@RequestMapping("/registerProduct")
	public String registerProduct() {
		log.info("상품등록");
		return "product/registerProduct";
	}
	
	@RequestMapping("/detailProduct")
	public String detailProduct() {
		log.info("상품상세");
		return "product/detailProduct";
	}
}
