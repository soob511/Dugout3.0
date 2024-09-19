package com.mycompany.dugout.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.dugout.dto.BannerDto;
import com.mycompany.dugout.dto.UpdateBannerDto;
import com.mycompany.dugout.service.BannerService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/banner")
public class BannerController {	
	@Autowired
	private BannerService bannerService;
	
	@RequestMapping("/bannerManagement")
	public String  bannerManagement() {
		log.info("실행");
		return "admin/bannerManagement";
	}
	
	@RequestMapping("/bannerImg")
	public void bannerImg(int bannerId, HttpServletResponse response) throws Exception {
		BannerDto banner = bannerService.getBanner(bannerId);
		
		String contentType = banner.getBannerType();
		response.setContentType(contentType);
		
		OutputStream out = response.getOutputStream();
		out.write(banner.getBannerData());
		out.flush();
		out.close();
	}
	
	@PostMapping("/updateBanner")
	public String updateBanner(UpdateBannerDto form) throws IOException {
		
		log.info("실행");
		BannerDto banner = new BannerDto();
		
		MultipartFile first= form.getFirstBanner();
		if(!first.isEmpty()) {
			banner.setBannerId(1);
			banner.setBannerName(first.getOriginalFilename());
			banner.setBannerType(first.getContentType());
			banner.setBannerData(first.getBytes());
			bannerService.updateBanner(banner);
		}
		
		MultipartFile second= form.getSecondBanner();
		if(!second.isEmpty()) {
			banner.setBannerId(2);
			banner.setBannerName(second.getOriginalFilename());
			banner.setBannerType(second.getContentType());
			banner.setBannerData(second.getBytes());
			bannerService.updateBanner(banner);
		}
		
		MultipartFile third= form.getThirdBanner();
		if(!third.isEmpty()) {
			banner.setBannerId(3);
			banner.setBannerName(third.getOriginalFilename());
			banner.setBannerType(third.getContentType());
			banner.setBannerData(third.getBytes());
			bannerService.updateBanner(banner);
		}

		
	return "redirect:/";
		
	}
}
