package com.kgit.kpark.buy.dao;

import java.util.List;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.community.board.vo.ArticleVO;

public interface BuyDAO {
	public SellingCarVO carInfo(String serial);
	public List<SellingCarVO> carListPage(int startIndex);
	public int carListCnt();
}