package com.kgit.kpark.sell.goods.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.sell.goods.vo.SellVO;
import com.kgit.kpark.member.vo.MemberVO;

public interface SellController {
	public ModelAndView addSell(SellVO sellVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
