package com.kgit.kpark.community.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.community.board.vo.ArticleVO;

public interface BoardDAO {
	public List board_selectAllArticlesList() throws DataAccessException;
	public int board_insertNewArticle(Map articleMap) throws DataAccessException;
	public void board_insertNewImage(Map articleMap) throws DataAccessException;
	public ArticleVO board_selectArticle(int articleNO) throws DataAccessException;
	public void board_updateArticle(Map articleMap) throws DataAccessException;
	public void board_deleteArticle(int articleNO) throws DataAccessException;
	public List board_selectImageFileList(int articleNO) throws DataAccessException;
	public void board_increaseViewcnt(int articleNO) throws DataAccessException;
}
