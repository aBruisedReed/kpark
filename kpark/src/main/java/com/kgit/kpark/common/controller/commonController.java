package com.kgit.kpark.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface commonController {
	public ModelAndView empty(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView footer(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView header(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView helpCenter(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView layout_only(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView layout(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView sidebar(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
