package com.kgit.kpark.info.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.info.vo.infoVO;

public interface infoDAO {
	public List selectCarList() throws DataAccessException;
	public List selectHyunList0() throws DataAccessException;
	public List selectHyunList1() throws DataAccessException;
	public List selectKiaList0() throws DataAccessException;
	public List selectKiaList1() throws DataAccessException;
	public List selectCherList0() throws DataAccessException;
	public List selectCherList1() throws DataAccessException;
	public List selectSsList0() throws DataAccessException;
	public List selectSsList1() throws DataAccessException;
	public List selectSamList0() throws DataAccessException;
	public List selectSamList1() throws DataAccessException;
	public List selectBMWList0() throws DataAccessException;
	public List selectBMWList1() throws DataAccessException;
	public List selectBenList0() throws DataAccessException;
	public List selectBenList1() throws DataAccessException;
	public List selectAudiList0() throws DataAccessException;
	public List selectAudiList1() throws DataAccessException;
	public List selectVolList0() throws DataAccessException;
	public List selectVolList1() throws DataAccessException;
	public infoVO carInfo(String model);
}
 