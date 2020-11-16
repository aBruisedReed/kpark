package com.kgit.kpark.buy.controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.service.BuyService;
import com.kgit.kpark.buy.util.CarInfoVO;
import com.kgit.kpark.buy.util.Paging;
import com.kgit.kpark.buy.vo.buyVO;
import com.kgit.kpark.home.service.HomeService;
import com.kgit.kpark.member.controller.MemberControllerImpl;
import com.kgit.kpark.member.vo.MemberVO;

@Controller("buyController")
@EnableAspectJAutoProxy
public class BuyControllerImpl implements BuyController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	BuyService buyService;
@Autowired
buyVO buyVO;
	@Override
	@RequestMapping(value = "buy/buyDetail.do", method = RequestMethod.GET)
	public ModelAndView buyDetail(String serial, HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
		ModelAndView mav = new ModelAndView();
		SellingCarVO car = buyService.carInfo(serial);
		mav.addObject("car", car);
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "buy/buyCounsel.do", method = RequestMethod.GET)
	public ModelAndView consult(@ModelAttribute("buyVO") buyVO buyVO, HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
		ModelAndView mav = new ModelAndView();
		
		
   
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "buy/search.do", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam(defaultValue="1") int curPage, 
			@RequestParam(value="searchType", required=false) String searchType,
			@RequestParam(value="keyword", required=false) String keyword,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<SellingCarVO> carListPage = null;
		int startIndex = ((curPage-1) * 40) + 1;
		int listCnt=0;
		Paging paging =new Paging();
		CarInfoVO carInfoVO = new CarInfoVO();
		if(searchType==null || keyword==null) { //메인 창
			carListPage = buyService.carListPage(startIndex);
			listCnt = buyService.carListCnt();
		} else if(searchType.equals("maker")) { //제조사 모델 검색
			carInfoVO.setCarModel(keyword);
			carInfoVO.setStartIndex(startIndex);
			carListPage = buyService.carListPageByMaker(carInfoVO);
			listCnt = buyService.carListCnt(carInfoVO);
		} else if(searchType.equals("type")){
			String[] carType = keyword.split(";");
			carInfoVO.setCarType(carType);
			carInfoVO.setStartIndex(startIndex);
			carListPage = buyService.carListPageByType(carInfoVO);
			listCnt = buyService.carListCnt(carInfoVO);
		} else if(searchType.equals("modelname")){
			carInfoVO.setKeyword(keyword);
			carInfoVO.setStartIndex(startIndex);
			carListPage = buyService.carListPageByName(carInfoVO);
			listCnt = buyService.carListCnt(carInfoVO);
		}
		paging.init(listCnt, curPage);
		String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
		ModelAndView mav = new ModelAndView();
		mav.addObject("carListPage", carListPage);
		mav.addObject("paging", paging);
		
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/buy/buyCounsel2.do", method = RequestMethod.GET)
	public ModelAndView result(@ModelAttribute("buyVO") buyVO buyVO,HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int result = 0;
		result=buyService.addValue(buyVO);
		mav.addObject("result", result);
		out.print("<script> alert('신청이 완료되었습니다.'); location.href='/kpark/home.do'; </script>");
		mav.setViewName(viewName);
		return null;
	}

//	@Override
//	@RequestMapping(value = "/buy/buyCounsel2.do", method = RequestMethod.GET)
//	public String result(buyVO buyVO, HttpServletRequest request, HttpServletResponse response, Model model) {
//		model.addAttribute("buyVO",buyVO);
//		return "/buy/buyCounsel2.do";
//	}
}
