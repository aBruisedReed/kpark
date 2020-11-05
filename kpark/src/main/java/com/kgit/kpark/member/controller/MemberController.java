package com.kgit.kpark.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kgit.kpark.member.vo.MemberVO;

public interface MemberController {
	public ModelAndView join_1(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView join_2(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView addMember(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView join_3(String result, String action, HttpServletRequest request, HttpServletResponse response)
			throws Exception;
	public ModelAndView logindo(MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView login(String result, String action, HttpServletRequest request, HttpServletResponse response)
			throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
