package com.kgit.kpark.buy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgit.kpark.admin.goods.dao.SellingCarDAO;
import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.dao.BuyDAO;
import com.kgit.kpark.community.board.vo.ArticleVO;
import com.kgit.kpark.home.dao.HomeDAO;

@Service("BuyService")
public class BuyServiceImpl implements BuyService {
	@Autowired
	private BuyDAO buyDAO;

	@Override
	public SellingCarVO carInfo(String serial) {
		return buyDAO.carInfo(serial);
	}
	
}
