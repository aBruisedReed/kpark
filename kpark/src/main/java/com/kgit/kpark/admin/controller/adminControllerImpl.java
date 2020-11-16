package com.kgit.kpark.admin.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.member.service.MemberService;
import com.kgit.kpark.member.service.MemberServiceImpl;
import com.kgit.kpark.member.vo.MemberVO;
import com.kgit.kpark.sell.goods.service.SellService;
import com.kgit.kpark.sell.goods.vo.SellVO;

@Controller("adminController")
@RequestMapping(value="/admin/*")
public class adminControllerImpl implements adminController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private SellService sellService;

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
		PrintWriter out = response.getWriter();
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
	@RequestMapping(value = "/admin/adminSellList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminSellList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List<SellVO> sellList = sellService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("sellList", sellList);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/admin/adminSellListView.do", method = RequestMethod.GET )
	public ModelAndView adminSellListView(@RequestParam("id") String id, @RequestParam("subModel") String subModel, HttpServletRequest request, HttpServletResponse response) throws DataAccessException {
		String viewName = (String)request.getAttribute("viewName");
		Map paramMap = new HashMap();
		paramMap.put("id", id);
		paramMap.put("subModel", subModel);
		SellVO sellVO = sellService.sellArticleView(paramMap);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("sellVO", sellVO);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/admin/adminEditForm.do", method = RequestMethod.GET)
	public ModelAndView updateForm(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		MemberVO member = memberService.selectMemberById(id);
		mav.setViewName(viewName);
		mav.addObject("member", member);
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
	
	@Override
	@RequestMapping(value = "/admin/updateMember.do", method = {RequestMethod.POST,RequestMethod.GET})
	public void updateMember(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HashMap<String,String> memberMap=new HashMap<String,String>();
		String val[]=null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw=response.getWriter();
		
		String user_name=request.getParameter("user_name");
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
		String user_address=request.getParameter("user_address");
		String user_zip=request.getParameter("user_zip");
		String user_phone=request.getParameter("user_phone");
		String user_email=request.getParameter("user_eamil");
		
		memberMap.put("user_name", user_name);
		memberMap.put("user_id", user_id);
		memberMap.put("user_pw", user_pw);
		memberMap.put("user_address", user_address);
		memberMap.put("user_zip", user_zip);
		memberMap.put("user_phone", user_phone);
		memberMap.put("user_email", user_email);
		
		
		memberService.adminUpdate(memberMap);
		pw.print("<script> alert('수정이 완료되었습니다.'); location.href='/kpark/admin/adminMembersList.do'; </script>");
		pw.close();	
	}
	
}
