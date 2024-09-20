package com.mycompany.dugout.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.GoodsLikeDao;
import com.mycompany.dugout.dto.GoodsLikeDto;

@Service
public class GoodsLikeService {
	
	@Autowired
	GoodsLikeDao goodsLikeDao;

	public void addLike(GoodsLikeDto goodsLike) {
		goodsLikeDao.insertLike(goodsLike);
	}

	public void deleteLike(GoodsLikeDto goodsLike) {
		goodsLikeDao.deleteLike(goodsLike);
		
	}

}
