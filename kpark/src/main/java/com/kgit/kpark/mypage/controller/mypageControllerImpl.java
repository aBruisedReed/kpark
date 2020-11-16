package com.kgit.kpark.mypage.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

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

import com.kgit.kpark.member.controller.MemberController;
import com.kgit.kpark.member.service.MemberService;
import com.kgit.kpark.member.vo.MemberVO;
import com.kgit.kpark.sell.goods.service.SellService;
import com.kgit.kpark.sell.goods.vo.SellVO;

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
	private MemberController memberController;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	MemberVO memberVO;
	
	@Autowired
	SellVO sellVO;
	
	@Autowired
	private SellService sellService;

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
	@RequestMapping(value = "/quitMember.do", method = RequestMethod.POST)
	public void removeMember(@RequestParam("pwCheck") String pw, String id, HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(pw.equals(memberService.getPwById(member.getUser_id()))) {
			id = member.getUser_id();
			memberService.removeMember(id);
			
			memberController.logout(request, response);
			out.print("<script> alert('탈퇴가 완료되었습니다.'); location.href='/kpark/'; </script>");
		}
		else {
			System.out.println(member.getUser_pw());
			System.out.println(pw);
			out.print("<script> alert('비밀번호가 일치하지 않습니다.'); location.href='/kpark/mypage/mypage_quit.do'; </script>");
		}
	}

	@Override
	@RequestMapping(value ="/mypage_select.do" ,method = RequestMethod.POST)
	public ModelAndView mypage_select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
        MemberVO memberVO = (MemberVO) session.getAttribute("member");
        String id = memberVO.getUser_id();
		mav.setViewName(viewName);
		mav.addObject("member", memberVO);
		return mav;
	}

	@Override
	@RequestMapping(value ="/mypage_sell.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView mypage_sell(String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
        MemberVO memberVO = (MemberVO) session.getAttribute("member");
        id = memberVO.getUser_id();
        System.out.println(id);
		String viewName = (String)request.getAttribute("viewName");
		List<SellVO> sellsingleList = sellService.singlelistArticles(id);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("sellsingleList", sellsingleList);
//		mav.addObject("id", id);
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
