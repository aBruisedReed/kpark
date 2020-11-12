package com.kgit.kpark.buy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.buy.util.CarInfoVO;
import com.kgit.kpark.community.board.vo.ArticleVO;

@Repository
public class BuyDAOImpl implements BuyDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public SellingCarVO carInfo(String serial) {
		return sqlSession.selectOne("mapper.sellingCar.selectCarInfo", serial);
	}

	@Override
	public List<SellingCarVO> carListPage(int startIndex) {
		return sqlSession.selectList("mapper.sellingCar.selectCarListPage", startIndex);
	}

	@Override
	public int carListCnt() {
		return sqlSession.selectOne("mapper.sellingCar.selectCarListCnt");
	}
	
	@Override
	public int carListCntInfo(CarInfoVO carInfoVO) {
		if (carInfoVO.getCarType().length >= 1) {
			return sqlSession.selectOne("mapper.sellingCar.selectCarListCntType", carInfoVO);
		} else if(carInfoVO.getKeyword().length() >= 1) {
			return sqlSession.selectOne("mapper.sellingCar.selectCarListCntName", carInfoVO);
		} else {
			return sqlSession.selectOne("mapper.sellingCar.selectCarListCntModel", carInfoVO);
		}
	}
	
	@Override
	public List<SellingCarVO> carListPageByMaker(CarInfoVO carInfoVO) {
		return sqlSession.selectList("mapper.sellingCar.selectCarListByMaker", carInfoVO);
	}
	
	@Override
	public List<SellingCarVO> carListPageByType(CarInfoVO carInfoVO) {
		return sqlSession.selectList("mapper.sellingCar.selectCarListByType", carInfoVO);
	}
	
	@Override
	public List<SellingCarVO> carListPageByName(CarInfoVO carInfoVO) {
		return sqlSession.selectList("mapper.sellingCar.selectCarListByName", carInfoVO);
	}
}
