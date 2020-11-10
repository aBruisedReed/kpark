package com.kgit.kpark.buy.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;

public interface BuyController {
//	ModelAndView search(SellingCarVO sellingCarVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView buyDetail(String serial, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
