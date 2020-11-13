package com.kgit.kpark.sell.goods.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.member.vo.MemberVO;
import com.kgit.kpark.sell.goods.service.SellService;
import com.kgit.kpark.sell.goods.vo.SellVO;

@Controller("sellGoodsController")
@EnableAspectJAutoProxy
public class SellGoodsControllerImpl implements SellGoodsController {
	private static final Logger logger = LoggerFactory.getLogger(SellGoodsControllerImpl.class);
	
	@Autowired 
	SellService sellService;
	@Autowired
	SellVO sellVO;
	
	@Override
	@RequestMapping(value = "sell/addSell.do", method = RequestMethod.POST)
	public ModelAndView addSell(SellVO sellVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int result = sellService.addSell(sellVO);
		System.out.println(sellVO.getCarModel());
		HttpSession session = request.getSession();
        MemberVO memberVO = (MemberVO) session.getAttribute("member");
        String test = memberVO.getUser_id();
		out.print("<script> alert('판매신청을 완료하었습니다..'); location.href='/kpark/home.do'; </script>");
		out.flush();
		return null;
	}



}
