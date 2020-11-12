package com.kgit.kpark.sell.goods.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.sell.goods.vo.SellVO;

public interface SellDAO {
	public int insertCar(SellVO sellVO) throws DataAccessException;
	public int deleteCar(int serial) throws DataAccessException;
	public void updateCar(HashMap carMap) throws DataAccessException;
	public List<SellVO> selectAllSellList() throws DataAccessException;
}
