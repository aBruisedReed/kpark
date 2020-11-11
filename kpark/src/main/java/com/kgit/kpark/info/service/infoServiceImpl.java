package com.kgit.kpark.info.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.kgit.kpark.info.dao.infoDAO;
import com.kgit.kpark.info.vo.infoVO;



@Service("infoService")
public class infoServiceImpl implements infoService {
	@Autowired
    private infoDAO infoDAO;
	@Override
	public List selectCarList() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectCarList();
		return CarList;
	}
	@Override
	public List selectHyunList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectHyunList0();
		return CarList;
	}
	@Override
	public List selectHyunList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectHyunList1();
		return CarList;
	}
	@Override
	public List selectKiaList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectKiaList0();
		return CarList;
	}
	@Override
	public List selectKiaList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectKiaList1();
		return CarList;
	}
	@Override
	public List selectCherList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectCherList0();
		return CarList;
	}
	@Override
	public List selectCherList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectCherList1();
		return CarList;
	}
	@Override
	public List selectSsList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectSsList0();
		return CarList;
	}
	@Override
	public List selectSsList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectSsList1();
		return CarList;
	}
	@Override
	public List selectSamList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectSamList0();
		return CarList;
	}
	@Override
	public List selectSamList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectSamList1();
		return CarList;
	}
	@Override
	public List selectBMWList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectBMWList0();
		return CarList;
	}
	@Override
	public List selectBMWList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectBMWList1();
		return CarList;
	}
	@Override
	public List selectBenList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectBenList0();
		return CarList;
	}
	@Override
	public List selectBenList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectBenList1();
		return CarList;
	}
	@Override
	public List selectAudiList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectAudiList0();
		return CarList;
	}
	@Override
	public List selectAudiList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectAudiList1();
		return CarList;
	}
	@Override
	public List selectVolList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectVolList0();
		return CarList;
	}
	@Override
	public List selectVolList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = infoDAO.selectVolList1();
		return CarList;
	}
	@Override
	public infoVO carInfo(String model) {
		
		return infoDAO.carInfo(model);
	}

}
