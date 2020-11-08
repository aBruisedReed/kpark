package com.kgit.kpark.mypage.controller;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kgit.kpark.member.service.MemberService;
import com.kgit.kpark.member.vo.MemberVO;

@Controller("mypageController")
@RequestMapping(value = "/mypage/*")
public class mypageControllerImpl implements mypageController {
//	@RequestMapping(value = {"/mypage/*"}, method = RequestMethod.GET)
//	private ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	MemberVO memberVO;

	@Override
	@RequestMapping(value ="/buy_counsel.do" ,method = RequestMethod.POST)
	public ModelAndView buy_counsel(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			String viewName = (String)request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			return mav;
	}

	@Override
	@RequestMapping(value ="/compareCar.do" ,method = RequestMethod.POST)
	public ModelAndView compareCar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/favoriteCar.do" ,method = RequestMethod.POST)
	public ModelAndView favoriteCar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/mypage_buy.do" ,method = RequestMethod.POST)
	public ModelAndView mypage_buy(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/mypage_edit.do" ,method = RequestMethod.POST)
	public ModelAndView mypage_edit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/updateMember.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public void updateMember(@RequestParam("old_pw") String old_pw, HttpServletRequest request, HttpServletResponse response)  throws Exception{
		HashMap<String,String> memberMap=new HashMap<String,String>();
		PrintWriter pw=response.getWriter();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
		String user_address=request.getParameter("user_address");
		String user_zip=request.getParameter("user_zip");
		String user_phone=request.getParameter("user_phone");
		String user_email=request.getParameter("user_eamil");
		
		memberMap.put("user_id", user_id);
		memberMap.put("user_pw", user_pw);
		memberMap.put("user_address", user_address);
		memberMap.put("user_zip", user_zip);
		memberMap.put("user_phone", user_phone);
		memberMap.put("user_email", user_email);
		
		memberService.updateMember(old_pw, member, memberMap, response);
		pw.print("<script> alert('수정이 완료되었습니다.'); location.href='/kpark/mypage/mypage_select'; </script>");
		pw.close();		
		
	}
	

	@Override
	@RequestMapping(value ="/mypage_quit.do" ,method = RequestMethod.POST)
	public ModelAndView mypage_quit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/mypage_select.do" ,method = RequestMethod.POST)
	public ModelAndView mypage_select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/mypage_sell.do" ,method = RequestMethod.POST)
	public ModelAndView mypage_sell(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/pop_compare.do" ,method = RequestMethod.POST)
	public ModelAndView pop_compare(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/recentView.do" ,method = RequestMethod.POST)
	public ModelAndView recentView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
}
