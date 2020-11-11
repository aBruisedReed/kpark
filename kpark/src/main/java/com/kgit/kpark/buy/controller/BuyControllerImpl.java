package com.kgit.kpark.buy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.service.BuyService;
import com.kgit.kpark.buy.util.Paging;
import com.kgit.kpark.home.service.HomeService;
import com.kgit.kpark.member.controller.MemberControllerImpl;

@Controller("buyController")
@EnableAspectJAutoProxy
public class BuyControllerImpl implements BuyController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	BuyService buyService;

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
	@RequestMapping(value = "buy/search.do", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam(defaultValue="1") int curPage, 
			@RequestParam(value="searchType", required=false) String searchType,
			@RequestParam(value="keyword", required=false) String keyword,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		int startIndex = ((curPage-1) * 40) + 1;
		String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
		ModelAndView mav = new ModelAndView();
		List<SellingCarVO> carListPage = buyService.carListPage(startIndex);
		int listCnt = buyService.carListCnt();
		Paging paging = new Paging(listCnt, curPage);
		mav.addObject("listCnt", listCnt);
		mav.addObject("carListPage", carListPage);
		mav.addObject("paging", paging);
		
		mav.setViewName(viewName);
		return mav;
	}
}
