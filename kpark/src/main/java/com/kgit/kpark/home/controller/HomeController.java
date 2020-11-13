package com.kgit.kpark.home.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;

public interface HomeController {
	ModelAndView homeData(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
