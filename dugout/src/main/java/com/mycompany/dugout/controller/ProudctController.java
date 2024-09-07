package com.mycompany.dugout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/product")
public class ProudctController {
	@RequestMapping("/bestProduct")
	public String bestProduct() {
		log.info("실행");
		return "/product/bestProduct";
	}
	
	@RequestMapping("/newProduct")
	public String newProduct() {
		log.info("실행");
		return "/product/newProduct";
	}
	
	@RequestMapping("/previewProduct")
	public String previewProduct() {
		log.info("실행");
		return "/product/previewProduct";
	}
	
	@RequestMapping("/productAdd")
	public String productAdd() {
		log.info("실행");
		return "/product/productAdd";
	}
	
	@RequestMapping("/productDetails")
	public String productDetails() {
		log.info("실행");
		return "/product/productDetails";
	}
	
	@RequestMapping("/productManagement")
	public String productManagement() {
		log.info("실행");
		return "/product/productManagement";
	}
	
	@RequestMapping("/recommendProduct")
	public String recommendProduct() {
		log.info("실행");
		return "/product/recommendProduct";
	}
}
