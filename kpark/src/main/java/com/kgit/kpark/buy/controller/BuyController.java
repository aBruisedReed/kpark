package com.kgit.kpark.buy.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.vo.buyVO;

public interface BuyController {
	ModelAndView buyDetail(String serial, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView search(int curPage, String searchType, String keyword, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	ModelAndView consult(@ModelAttribute("buyVO") buyVO buyVO, HttpServletRequest request, HttpServletResponse response);
	ModelAndView result( @ModelAttribute("buyVO") buyVO buyVO,HttpServletRequest request, HttpServletResponse response)throws Exception;

}
