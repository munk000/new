package com.mealkitland.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.board.dao.BoardDAO;
import com.mealkitland.board.domain.BoardVO;

public class WriteOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardVO boardVO = new BoardVO();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		
		HttpSession session = req.getSession();
		
		boardVO.setBoardTitle(req.getParameter("boardTitle"));
		boardVO.setBoardContent(req.getParameter("boardContent")); 
		boardVO.setUserId((Long)session.getAttribute("userId"));
		
		result.setPath(req.getContextPath()+"listOk.board");
		result.setRedirect(true);
		return result;
	}
}
