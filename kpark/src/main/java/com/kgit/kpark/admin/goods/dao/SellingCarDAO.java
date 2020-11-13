package com.kgit.kpark.admin.goods.dao;

import java.util.HashMap;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;

public interface SellingCarDAO {
	public int insertCar(HashMap sellingCarVO) throws DataAccessException;
	public int deleteCar(int serial) throws DataAccessException;
	public void updateCar(HashMap carMap) throws DataAccessException;
	public String getSerialMax() throws DataAccessException;
}
