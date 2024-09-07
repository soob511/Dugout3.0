package com.mycompany.dugout.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.dugout.dto.BannerDto;

@Mapper
public interface BannerDao {
	public BannerDto selectBannerById(int bannerId);

}
