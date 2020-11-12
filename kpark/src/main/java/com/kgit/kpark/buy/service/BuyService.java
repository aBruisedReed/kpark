package com.kgit.kpark.buy.service;

import java.util.List;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.util.CarInfoVO;
import com.kgit.kpark.community.board.vo.ArticleVO;

public interface BuyService {
	public SellingCarVO carInfo(String serial);
	public List<SellingCarVO> carListPage(int startIndex);
	public List<SellingCarVO> carListPageByMaker(CarInfoVO carInfoVO);
	public int carListCnt();
	public int carListCnt(CarInfoVO carInfoVO);
}
