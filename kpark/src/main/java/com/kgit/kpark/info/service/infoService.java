package com.kgit.kpark.info.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface infoService {
	public List selectCarList() throws DataAccessException;
}
