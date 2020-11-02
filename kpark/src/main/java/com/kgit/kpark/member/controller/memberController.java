package com.kgit.kpark.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface memberController {
	public ModelAndView join_1(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView join_2(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView join_3(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
