package com.kgit.kpark.info.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.kgit.kpark.info.dao.infoDAO;
import com.kgit.kpark.info.vo.infoVo;



@Service("infoService")
public class infoServiceImpl implements infoService {
	@Autowired
    private infoDAO infoDAO;
	@Override
	public List selectCarList() throws DataAccessException {
		List<infoVo> CarList = null;
		CarList = infoDAO.selectCarList();
		return CarList;
	}

}
