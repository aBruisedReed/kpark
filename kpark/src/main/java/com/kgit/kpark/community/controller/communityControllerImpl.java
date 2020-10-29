package com.kgit.kpark.community.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.member.controller.memberController;

public class communityControllerImpl implements communityController {
	@Controller
	@RequestMapping(value="/community/*")
	public class memberControllerImpl implements memberController {
		@RequestMapping(value = {"/community/*"}, method = RequestMethod.GET)
		private ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
		}
	}
}
