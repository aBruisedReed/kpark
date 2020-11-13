package com.kgit.kpark.community.board.service;

import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.kgit.kpark.community.board.vo.ArticleVO;


public interface BoardService {
	public List<ArticleVO> board_listArticles() throws Exception;
	public int board_addNewArticle(Map articleMap) throws Exception;
	public ArticleVO board_viewArticle(int articleNO) throws Exception;
	public void board_modArticle(Map articleMap) throws Exception;
	public void board_removeArticle(int articleNO) throws Exception;
	public void board_increaseViewcnt(int articleNO, HttpSession session) throws Exception;
}
