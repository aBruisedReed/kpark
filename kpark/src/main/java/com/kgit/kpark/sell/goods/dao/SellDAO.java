package com.kgit.kpark.sell.goods.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.member.vo.MemberVO;
import com.kgit.kpark.sell.goods.vo.SellVO;

public interface SellDAO {
	public int insertCar(SellVO sellVO) throws DataAccessException;
	public int deleteCar(int serial) throws DataAccessException;
	public void updateCar(HashMap carMap) throws DataAccessException;
	public List<SellVO> selectAllSellList() throws DataAccessException;
	public List<SellVO> selectSingleSellList(String id) throws DataAccessException;
	public SellVO selectSellVO(Map paramMap);
}
