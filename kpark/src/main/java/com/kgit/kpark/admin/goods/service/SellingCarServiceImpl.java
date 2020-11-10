package com.kgit.kpark.admin.goods.service;

import java.util.HashMap;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.kgit.kpark.admin.goods.dao.SellingCarDAO;
import com.kgit.kpark.admin.goods.vo.SellingCarVO;

@Service("SellingCarService")
public class SellingCarServiceImpl implements SellingCarService {
	@Autowired
	private SellingCarDAO sellingCarDAO;
	
	@Override
	public int addCar(SellingCarVO sellingCarVO) throws DataAccessException {
		return sellingCarDAO.insertCar(sellingCarVO);
	}

	@Override
	public int removeCar(int serial) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCar(SellingCarVO sellingCarVO, HashMap carMap, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
}
