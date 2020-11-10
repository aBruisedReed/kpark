package com.kgit.kpark.buy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.community.board.vo.ArticleVO;

@Repository
public class BuyDAOImpl implements BuyDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public SellingCarVO carInfo(String serial) {
		return sqlSession.selectOne("mapper.sellingCar.selectCarInfo", serial);
	}

}
