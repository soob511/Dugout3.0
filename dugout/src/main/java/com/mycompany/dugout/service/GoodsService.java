package com.mycompany.dugout.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.GoodsDao;
import com.mycompany.dugout.dto.GoodsDto;
import com.mycompany.dugout.dto.PagerDto;

@Service
public class GoodsService {
	
	@Autowired
	private GoodsDao goodsDao;

	public List<GoodsDto> getGoodsList(PagerDto pager) {
		List<GoodsDto> list = goodsDao.selectGoodsList(pager);
		return list;
	}

	public GoodsDto getImg(int goodsId) {
		GoodsDto goods = goodsDao.getImg(goodsId);
		return goods;
	}

	public void insertGoods(GoodsDto goods) {
		goodsDao.insertGoods(goods);
	}

	public int getTotalRows() {
		int totalRows = goodsDao.getTotalRows();
		return totalRows;
	}

	public List<GoodsDto> getTeamList(String goodsTeam, PagerDto pager) {
		List<GoodsDto> list = goodsDao.getTeamList(goodsTeam,pager);
		return list;
	}

	public int getTeamRows(String goodsTeam) {
		int teamRows = goodsDao.getTeamRows(goodsTeam);
		return teamRows;
	}

	public GoodsDto getGoodsDetail(int goodsId) {
		GoodsDto goods = goodsDao.selectGoodsDetail(goodsId);
		return goods;
	}

	public void updateGoods(GoodsDto goods) {
		goodsDao.updateGoods(goods);
		
	}

	public List<GoodsDto> getBestGoods(PagerDto pager) {
		List<GoodsDto> list = goodsDao.selectBestGoods(pager);
		return list;
	}

	public List<GoodsDto> getRecommendGoods(PagerDto pager) {
		List<GoodsDto> list = goodsDao.selectRecommendGoods(pager);
		return list;
	}

	public int getLimitRows() {
		int limitRows = goodsDao.getLimitRows();
		return limitRows;
	}
	
	public int getCategoryLimitRows(int categoryNum) {
		int limitRows = goodsDao.getCategoryLimitRows(categoryNum);
		return limitRows;
	}

	public List<GoodsDto> getNewGoods(PagerDto pager) {
		List<GoodsDto> list = goodsDao.selectNewGoods(pager);
		return list;
	}

	public int getTotalRowsByKeyword(String keyword) {
		int totalRowsByKeyword = goodsDao.getTotalRowsByKeyword(keyword);
		return totalRowsByKeyword;
	}

	public List<GoodsDto> getGoodsListByKeyword(String keyword, PagerDto pager) {
		List<GoodsDto> list = goodsDao.getGoodsListByKeyword(keyword, pager);
		return list;
	}

	public List<GoodsDto> getCategoryGoodsList(int categoryNum, PagerDto pager) {
		List<GoodsDto> list = goodsDao.getCategoryGoodsList(categoryNum, pager);
		return list;
	}
}
