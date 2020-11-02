package com.kgit.kpark.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public interface adminController {
	public ModelAndView adminBuyList(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView adminMembersList(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView adminSellForm(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView adminSellList(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
