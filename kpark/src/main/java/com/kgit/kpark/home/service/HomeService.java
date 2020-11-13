package com.kgit.kpark.home.service;

import java.util.List;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.community.board.vo.ArticleVO;

public interface HomeService {
	public List<SellingCarVO> carList();
	public List<ArticleVO> articleList();
}
