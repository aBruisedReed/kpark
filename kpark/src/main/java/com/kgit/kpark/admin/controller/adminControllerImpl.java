package com.kgit.kpark.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.member.service.MemberService;
import com.kgit.kpark.member.service.MemberServiceImpl;

@Controller("adminController")
@RequestMapping(value="/admin/*")
public class adminControllerImpl implements adminController {
	
	@Autowired
	private MemberService memberService;

	@Override
	@RequestMapping(value = "/admin/adminBuyList.do", method = RequestMethod.POST)
	public ModelAndView adminBuyList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	

	@Override
	@RequestMapping(value = "/admin/adminMembersList.do", method = RequestMethod.GET)
	public ModelAndView adminMembersList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		
		List membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/adminSelect.do", method = RequestMethod.POST)
	public ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/adminSellForm.do", method = RequestMethod.POST)
	public ModelAndView adminSellForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/adminSellList.do", method = RequestMethod.POST)
	public ModelAndView adminSellList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/admin/removeMember.do", method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/admin/adminMembersList.do");
		return mav;
	}
	
}
