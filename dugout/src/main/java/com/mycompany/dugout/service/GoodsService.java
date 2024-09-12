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
		List<GoodsDto> list = goodsDao.SelectGoodsList(pager);
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

}
