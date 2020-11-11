package com.kgit.kpark.community.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		boardDAO.board_insertNewImage(articleMap);
		return articleNO;
	}

	//다중 파일 보이기
	@Override
	public Map board_viewArticle(int articleNO) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.board_selectArticle(articleNO);
		List<ImageVO> imageFileList = boardDAO.board_selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
		articleMap.put("imageFileList", imageFileList);
		return articleMap;
	}
	
	@Override
	public void board_modArticle(Map articleMap) throws Exception {
		boardDAO.board_updateArticle(articleMap);
	}
	
	@Override
	public void board_removeArticle(int articleNO) throws Exception {
		boardDAO.board_deleteArticle(articleNO);
	}	
}