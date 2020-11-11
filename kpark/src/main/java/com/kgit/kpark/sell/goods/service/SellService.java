package com.kgit.kpark.sell.goods.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.kgit.kpark.sell.goods.dao.SellDAO;
import com.kgit.kpark.sell.goods.vo.SellVO;
import com.kgit.kpark.member.vo.MemberVO;

public interface SellService {
	 public int addSell(SellVO sellVO) throws DataAccessException;
	 public int removeCar(int serial) throws DataAccessException;
	 public void updateCar(SellVO sellVO, HashMap carMap, HttpServletResponse response) throws Exception;
}
