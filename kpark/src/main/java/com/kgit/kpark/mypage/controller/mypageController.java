package com.kgit.kpark.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface mypageController {
 public ModelAndView buy_counsel(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView compareCar(HttpServletRequest request, HttpServletResponse response)throws Exception;	 
 public ModelAndView favoriteCar(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView mypage_buy(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView mypage_edit(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView mypage_quit(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView mypage_select(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView mypage_sell(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView pop_compare(HttpServletRequest request, HttpServletResponse response)throws Exception;
 public ModelAndView recentView(HttpServletRequest request, HttpServletResponse response)throws Exception;
 
}
