package com.kgit.kpark.home.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.community.board.vo.ArticleVO;

@Repository
public class HomeDAOImpl implements HomeDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<SellingCarVO> carList() {
		return sqlSession.selectList("mapper.sellingCar.selectCarList");
	}

	@Override
	public List<ArticleVO> articleList() {
		// TODO Auto-generated method stub
		return null;
	}

}
