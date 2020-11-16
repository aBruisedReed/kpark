package com.kgit.kpark.buy.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.util.CarInfoVO;
import com.kgit.kpark.buy.vo.buyVO;

public interface BuyService {
	public SellingCarVO carInfo(String serial);
	public List<SellingCarVO> carListPage(int startIndex);
	public List<SellingCarVO> carListPageByMaker(CarInfoVO carInfoVO);
	public List<SellingCarVO> carListPageByType(CarInfoVO carInfoVO);
	public List<SellingCarVO> carListPageByName(CarInfoVO carInfoVO);
	public int carListCnt();
	public int carListCnt(CarInfoVO carInfoVO);
	public int addValue(buyVO buyVO);
	public List buySelect() throws DataAccessException;
}
