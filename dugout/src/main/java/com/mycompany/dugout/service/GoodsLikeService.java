package com.mycompany.dugout.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.GoodsLikeDao;
import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.GoodsLikeDto;
import com.mycompany.dugout.dto.PagerDto;

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

	public int getLikeRowsById(String userId) {
		int totalRows = goodsLikeDao.getLikeRowsById(userId);
		return totalRows;
	}

	public List<GoodsDto> getLikeItemList(String userId, PagerDto pager) {
		List<GoodsDto> list = goodsLikeDao.getLikeItemList(userId, pager);
		return list;
	}
	public int getIsLike(GoodsLikeDto goodsLike) {
		int count = goodsLikeDao.selectIsLike(goodsLike);
		return count;
	}

	public void deleteAllLikes(String userId) {
		goodsLikeDao.deleteAllLikes(userId);
	}

}

