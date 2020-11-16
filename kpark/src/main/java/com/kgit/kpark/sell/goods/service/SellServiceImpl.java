package com.kgit.kpark.sell.goods.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.kgit.kpark.member.vo.MemberVO;
import com.kgit.kpark.sell.goods.dao.SellDAO;
import com.kgit.kpark.sell.goods.vo.SellVO;

@Service("SellService")
public class SellServiceImpl implements SellService {
	@Autowired
	private SellDAO sellDAO;
	
	@Override
	public int addSell(SellVO sellVO) throws DataAccessException {
		return sellDAO.insertCar(sellVO);
	}

	@Override
	public int removeCar(int serial) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCar(SellVO sellVO, HashMap carMap, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List listArticles() throws DataAccessException {
		List<SellVO> sellList = sellDAO.selectAllSellList();
		return sellList;
	}

	@Override
	public List singlelistArticles(String id) throws DataAccessException {
		List<SellVO> sellsingleList = sellDAO.selectSingleSellList(id);
		return sellsingleList;
	}
	
	@Override
	public SellVO sellArticleView(Map paramMap) {
		SellVO sellVO = sellDAO.selectSellVO(paramMap);
		return sellVO;
	}
	
}
