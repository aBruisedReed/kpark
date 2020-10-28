package com.kgit.kpark;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="common/{pageName}")
	public String comm(@PathVariable("pageName")String pageName) {
		return "/common/"+pageName;
	}

	@RequestMapping(value="buy/{pageName}")
	public String buy(@PathVariable("pageName")String pageName) {
		return "/buy/"+pageName;
	}
	
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
