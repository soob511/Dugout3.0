package com.mycompany.dugout.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.GoodsDao;
import com.mycompany.dugout.dto.GoodsDto;

@Service
public class GoodsService {
	
	@Autowired
	private GoodsDao goodsDao;

	public List<GoodsDto> getGoodsList() {
		List<GoodsDto> list = goodsDao.SelectGoodsList();
		return list;
	}


}
