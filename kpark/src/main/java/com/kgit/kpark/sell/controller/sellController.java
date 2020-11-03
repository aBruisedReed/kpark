package com.kgit.kpark.sell.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface sellController {
	public ModelAndView sellForm(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
