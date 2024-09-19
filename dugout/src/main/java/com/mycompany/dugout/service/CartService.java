package com.mycompany.dugout.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dugout.dao.CartDao;
import com.mycompany.dugout.dto.CartDto;

@Service
public class CartService {
	@Autowired
	private CartDao cartDao;

	public void addCart(CartDto item) {
		cartDao.addCart(item);
	}

	public List<CartDto> getCartList(String userId) {
		List<CartDto> list = cartDao.selectCartList(userId);
		return list;
	}

}
