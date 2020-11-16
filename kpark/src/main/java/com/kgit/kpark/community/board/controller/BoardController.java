package com.kgit.kpark.community.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


public interface BoardController {
	
	public ModelAndView board_listArticles(HttpServletRequest request, HttpServletResponse response) 
			throws Exception;
	
	public ResponseEntity board_addNewArticle(MultipartHttpServletRequest multipartRequest,HttpServletResponse response) 
			throws Exception;
	
	public ModelAndView board_viewArticle(@RequestParam("articleNO") int articleNO, HttpSession session,
			                        HttpServletRequest request, HttpServletResponse response) 
			                        		throws Exception;
	
	public ResponseEntity board_modArticle(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response) 
			throws Exception;
	
	public ResponseEntity board_removeArticle(@RequestParam("articleNO") int articleNO,
                              HttpServletRequest request, HttpServletResponse response) 
                            		  throws Exception;
}