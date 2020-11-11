package com.kgit.kpark.community.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface communityController {
	public ModelAndView boardForm(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView boardList(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView boardReply(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView boardView(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView newsForm(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView newsList(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView newsView(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView reviewForm(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView reviewList(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView reviewView(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
