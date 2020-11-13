package com.kgit.kpark.admin.goods.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.kgit.kpark.admin.goods.dao.SellingCarDAO;
import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.member.vo.MemberVO;

public interface SellingCarService {
	 public int addCar(SellingCarVO sellingCarVO) throws DataAccessException;
	 public int removeCar(int serial) throws DataAccessException;
	 public void updateCar(SellingCarVO sellingCarVO, HashMap carMap, HttpServletResponse response) throws Exception;
}
