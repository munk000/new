package com.mealkitland.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.mealkitland.user.domain.UserVO;
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
	
	// 회원가입
	public void insert(UserVO userVO) {
		sqlSession.insert("User.insert", userVO);
	}
	
	// 아이디 중복검사
	public String selectIdentification(String userIdentification) {
		return sqlSession.selectOne("user.selectIdentification", userIdentification);
	}
	
	// 이메일 중복검사
		public String selectEmail(String userEmail) {
			return sqlSession.selectOne("user.selectEmail", userEmail);
		}
	
}
