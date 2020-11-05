package com.kgit.kpark.info.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.info.vo.infoVo;


@Repository("infoDAO")
public class infoDAOImpl implements infoDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectCarList() throws DataAccessException {
		List<infoVo> CarList = null;
		CarList = sqlSession.selectList("mapper.info.selectCarList");
		return CarList;
	}

}
