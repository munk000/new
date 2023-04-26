package com.mealkitland.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mealkitland.board.domain.BoardDTO;
import com.mealkitland.board.domain.BoardVO;
import com.mealkitland.board.domain.Criteria;
import com.mybatis.config.MyBatisConfig;

public class BoardDAO {
	public SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 전체 조회
//	public List<BoardDTO>(HashMap<String, Object> pagable){
//			return sqlSession.selectList("board.selectAll", pagable);
//	}
//	게시글 조회 
//	public List<BoardDTO> selectAll(){
//		return sqlSession.selectList("board.selectAll");
//	}
	public List<BoardDTO> selectAll(Criteria criteria){
		return sqlSession.selectList("board.selectAll", criteria);
	}
	
// 	게시글 추가 
	public void insert(BoardVO boardVO) {
		sqlSession.insert("board.insert", boardVO);
	}
	
	//전체 게시글 개수 조회 
	public int getTotal() {
		return sqlSession.selectOne("board.getTotal");
	}
	
}
