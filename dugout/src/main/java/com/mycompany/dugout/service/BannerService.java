package com.mycompany.dugout.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.BannerDao;
import com.mycompany.dugout.dto.BannerDto;

@Service
public class BannerService {
	@Autowired
	private BannerDao bannerDao;
	
	public BannerDto getBanner(int bannerId) {
		BannerDto banner = bannerDao.selectBannerById(bannerId);
		return banner;
	}

}
