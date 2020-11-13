package com.kgit.kpark.info.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.info.vo.infoVO;


@Repository("infoDAO")
public class infoDAOImpl implements infoDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectCarList() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectCarList");
		return CarList;
	}

	@Override
	public List selectHyunList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectHyunList0");
		return CarList;
	}

	@Override
	public List selectHyunList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectHyunList1");
		return CarList;
	}

	@Override
	public List selectKiaList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectKiaList0");
		return CarList;
	}

	@Override
	public List selectKiaList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectKiaList1");
		return CarList;
	}

	@Override
	public List selectCherList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectCherList0");
		return CarList;
	}

	@Override
	public List selectCherList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectCherList1");
		return CarList;
	}

	@Override
	public List selectSsList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectSsList0");
		return CarList;
	}

	@Override
	public List selectSsList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectSsList1");
		return CarList;
	}

	@Override
	public List selectSamList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectSamList0");
		return CarList;
	}

	@Override
	public List selectSamList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectSamList1");
		return CarList;
	}

	@Override
	public List selectBMWList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectBMWList0");
		return CarList;
	}

	@Override
	public List selectBMWList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectBMWList1");
		return CarList;
	}

	@Override
	public List selectBenList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectBenList0");
		return CarList;
	}

	@Override
	public List selectBenList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectBenList1");
		return CarList;
	}

	@Override
	public List selectAudiList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectAudiList0");
		return CarList;
	} 

	@Override
	public List selectAudiList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectAudiList1");
		return CarList;
	}

	@Override
	public List selectVolList0() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectVolList0");
		return CarList;
	}

	@Override
	public List selectVolList1() throws DataAccessException {
		List<infoVO> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectVolList1");
		return CarList;
	}

	@Override
	public infoVO carInfo(String model) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.info.selectCarInfo",model);
	}

}
