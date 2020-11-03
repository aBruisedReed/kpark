package com.kgit.kpark.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
