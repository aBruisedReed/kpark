package com.kgit.kpark.sell.goods.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.sell.goods.vo.SellVO;

@Repository("SellDAO")
public class SellDAOImpl implements SellDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertCar(SellVO sellVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.sell.insertCar", sellVO);
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

	@Override
	public List<SellVO> selectAllSellList() throws DataAccessException {
		List<SellVO> sellList = sqlSession.selectList("mapper.sell.selectAllSellList");
		return sellList;
	}
	
}
