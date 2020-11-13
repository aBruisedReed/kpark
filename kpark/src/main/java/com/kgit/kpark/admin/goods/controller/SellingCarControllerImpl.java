package com.kgit.kpark.admin.goods.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.controller.SellingCarController;
import com.kgit.kpark.admin.goods.service.SellingCarService;
import com.kgit.kpark.admin.goods.vo.SellingCarVO;

@Controller("sellingCarController")
@EnableAspectJAutoProxy
public class SellingCarControllerImpl implements SellingCarController {
	private static final Logger logger = LoggerFactory.getLogger(SellingCarControllerImpl.class);
	
	@Autowired 
	SellingCarService sellingCarService;
	@Autowired
	SellingCarVO sellingCarVO;
	
	@Override
	@RequestMapping(value = "admin/addCar.do", method = RequestMethod.POST)
	public ModelAndView addCar(SellingCarVO sellingCarVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = sellingCarService.addCar(sellingCarVO);
		ModelAndView mav = new ModelAndView("redirect:/admin/adminSelect.do");
		return mav;
	}

}
