package com.kgit.kpark.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kgit.kpark.member.service.MemberService;
import com.kgit.kpark.member.service.MemberServiceImpl;
import com.kgit.kpark.member.vo.MemberVO;

@Controller("memberController")
//@RequestMapping(value="/member/*")
@EnableAspectJAutoProxy
public class MemberControllerImpl implements MemberController {
//	@RequestMapping(value = {"/member/*"}, method = RequestMethod.GET)
//	private ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	MemberVO memberVO;

	@Override
	@RequestMapping(value = "/member/join_1.do", method = RequestMethod.POST)
	public ModelAndView join_1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
	    ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/member/join_2.do", method = RequestMethod.POST)
	public ModelAndView join_2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
	    ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/member/join_3.do", method = RequestMethod.POST)
	public ModelAndView join_3(@RequestParam(value = "result", required = false) String result,
			@RequestParam(value = "action", required = false) String action,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
			HttpSession session = request.getSession();
			session.setAttribute("action", action);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			mav.setViewName(viewName);
			return mav;
	}
	
	@Override
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(value = "result", required = false) String result,
			@RequestParam(value = "action", required = false) String action,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
			HttpSession session = request.getSession();
			session.setAttribute("action", action);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			mav.setViewName(viewName);
			return mav;
	}

	@Override
	@RequestMapping(value = "/member/logindo.do", method = RequestMethod.POST)
	public ModelAndView logindo(@ModelAttribute("memberVO") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login(member);
		if(memberVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberVO);
			session.setAttribute("isLogOn", true);
			if(memberVO.getUser_id().equals("admin")) {
				session.setAttribute("isAdmin", true); // 관리자 계정일 시 session에 관리자 속성 추가
			}
			String action = (String)session.getAttribute("action");
			session.removeAttribute("action");
			if(action!=null) {
				mav.setViewName("redirect:"+action);
			}
			else {
			mav.setViewName("redirect:/");
			}
		}
		else {
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/member/login.do");
		}
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/member/addMember.do", method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute("memberVO") MemberVO memberVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.addMember(memberVO);
		ModelAndView mav = new ModelAndView("redirect:/member/login.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		session.removeAttribute("isAdmin"); // 관리자 계정 속성 삭제
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}	
}
