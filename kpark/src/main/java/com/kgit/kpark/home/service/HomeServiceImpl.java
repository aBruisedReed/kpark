package com.kgit.kpark.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgit.kpark.admin.goods.dao.SellingCarDAO;
import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.community.board.vo.ArticleVO;
import com.kgit.kpark.home.dao.HomeDAO;

@Service("HomeService")
public class HomeServiceImpl implements HomeService {
	@Autowired
	SellingCarVO sellingCarVO;
	@Autowired
	ArticleVO articleVO;
	@Autowired
	private HomeDAO homeDAO;

	@Override
	public List<SellingCarVO> carList() {
		return homeDAO.carList();
	}

	@Override
	public List<ArticleVO> articleList() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
