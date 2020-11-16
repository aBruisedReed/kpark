package com.kgit.kpark.community.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kgit.kpark.community.board.dao.BoardDAO;
import com.kgit.kpark.community.board.vo.ArticleVO;
import com.kgit.kpark.community.board.vo.ImageVO;

@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl  implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	
	public List<ArticleVO> board_listArticles() throws Exception{
		List<ArticleVO> articlesList =  boardDAO.board_selectAllArticlesList();
        return articlesList;
	}

	 //다중 이미지 추가하기
	@Override
	public int board_addNewArticle(Map articleMap) throws Exception{
		int articleNO = boardDAO.board_insertNewArticle(articleMap);
		articleMap.put("articleNO", articleNO);
		System.out.println(articleMap.get("imageFile"));
		if(articleMap.get("imageFile") != null) {
			System.out.println("test");
			boardDAO.board_insertNewImage(articleMap);
		}
		return articleNO;
	}

	//단일 파일 보이기
	@Override
	public ArticleVO board_viewArticle(int articleNO) throws Exception {
		ArticleVO articleVO = boardDAO.board_selectArticle(articleNO);
		return articleVO;
	}
	
	@Override
	public void board_modArticle(Map articleMap) throws Exception {
		boardDAO.board_updateArticle(articleMap);
	}
	
	@Override
	public void board_removeArticle(int articleNO) throws Exception {
		boardDAO.board_deleteArticle(articleNO);
	}
	
	@Override
	public void board_increaseViewcnt(int articleNO, HttpSession session) throws Exception {
		long update_time = 0;
		if(session.getAttribute("update_time_"+articleNO) != null) {
			update_time = (Long)session.getAttribute("update_time_"+articleNO);
		}
		long current_time = System.currentTimeMillis();
		if(current_time - update_time > 5*1000) {
			boardDAO.board_increaseViewcnt(articleNO);
			session.setAttribute("update_time_"+articleNO, current_time);
		}
	}
}