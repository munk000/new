package com.mealkitland.cart.dao;

import org.apache.ibatis.session.SqlSession;

import com.mealkitland.cart.domain.CartDTO;
import com.mybatis.config.MyBatisConfig;

public class CartDAO {
	public SqlSession sqlSession;
	
	public CartDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
 public CartDTO select(Long userId) {
	 return sqlSession.selectOne("cart.select",userId);
 }
}
