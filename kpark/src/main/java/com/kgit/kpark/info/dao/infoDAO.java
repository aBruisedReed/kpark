package com.kgit.kpark.info.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface infoDAO {
	public List selectCarList() throws DataAccessException;
	
}
