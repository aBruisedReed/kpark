package com.kgit.kpark.sell.goods.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

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

	
}
