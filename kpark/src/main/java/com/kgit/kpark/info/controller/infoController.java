package com.kgit.kpark.info.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface infoController {
	public ModelAndView brandInfo(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandList(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
