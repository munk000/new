package com.mealkitland.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class UserDAO {
	public SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	//	로그인
	public Long login(String userIdentification, String userPassword) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("userIdentification", userIdentification);
		loginMap.put("userPassword", userPassword);
		
		return sqlSession.selectOne("user.login", loginMap);
		
	}
	
	
}
