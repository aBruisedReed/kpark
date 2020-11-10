package com.kgit.kpark.home.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.home.service.HomeService;

@Controller("homeController")
@EnableAspectJAutoProxy
@RequestMapping(value="/*")
public class HomeControllerImpl implements HomeController {
	@Autowired
	HomeService homeService;

	@Override
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public ModelAndView homeData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
	    ModelAndView mav = new ModelAndView();
	    List<SellingCarVO> carList = homeService.carList();
	    mav.addObject("carList", carList);
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	private ModelAndView home(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = "home";
		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
		mav.setViewName("redirect:/home.do");
		return mav;
	}
	
	@RequestMapping(value="common/{pageName}")
	public String comm(@PathVariable("pageName")String pageName) {
		return "/common/"+pageName;
	}

//	@RequestMapping(value="buy/{pageName}")
//	public String buy(@PathVariable("pageName")String pageName) {
//		return "/buy/"+pageName;
//	}
	
	@RequestMapping(value="admin/{pageName}")
	public String adm(@PathVariable("pageName")String pageName) {
		return "/admin/"+pageName;
	}
	
	@RequestMapping(value="community/{pageName}")
	public String community(@PathVariable("pageName")String pageName) {
		return "/community/"+pageName;
	}
	
	@RequestMapping(value="info/{pageName}")
	public String info(@PathVariable("pageName")String pageName) {
		return "/info/"+pageName;
	}
	
	@RequestMapping(value="member/{pageName}")
	public String member(@PathVariable("pageName")String pageName) {
		return "/member/"+pageName;
	}
	
	@RequestMapping(value="mypage/{pageName}")
	public String mypage(@PathVariable("pageName")String pageName) {
		return "/mypage/"+pageName;
	}
	
	@RequestMapping(value="sell/{pageName}")
	public String sell(@PathVariable("pageName")String pageName) {
		return "/sell/"+pageName;
	}

}
