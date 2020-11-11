package com.kgit.kpark.info.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface infoController {
	public ModelAndView brandInfo(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfo2(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandList(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoKia(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoCher(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoSs(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoSam(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoBMW(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoBen(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoAudi(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView brandInfoVol(HttpServletRequest request, HttpServletResponse response)throws Exception;
	ModelAndView brandDetail(@RequestParam (value="model",required=false) String model, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
