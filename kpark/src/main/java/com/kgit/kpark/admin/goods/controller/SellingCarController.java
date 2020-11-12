package com.kgit.kpark.admin.goods.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.member.vo.MemberVO;

public interface SellingCarController {
//	public ModelAndView addCar(SellingCarVO sellingCarVO, HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ResponseEntity addCar(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
}
