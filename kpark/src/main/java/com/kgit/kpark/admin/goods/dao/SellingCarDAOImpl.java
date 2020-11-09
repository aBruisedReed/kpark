package com.kgit.kpark.admin.goods.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;

@Repository("SellingCarDAO")
public class SellingCarDAOImpl implements SellingCarDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertCar(SellingCarVO sellingCarVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.sellingCar.insertCar", sellingCarVO);
		return result;
	}

	@Override
	public int deleteCar(int serial) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCar(HashMap carMap) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}
	
}
