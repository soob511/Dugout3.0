package com.mycompany.dugout.controller;

import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.dugout.dto.BannerDto;
import com.mycompany.dugout.service.BannerService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/banner")
public class BannerController {	
	@Autowired
	private BannerService bannerService;
	
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
}
