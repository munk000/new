package com.mealkitland.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.user.dao.UserDAO;
import com.mealkitland.user.domain.UserVO;

public class JoinOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();
	
		userVO.setUserIdentification(req.getParameter("userIdentification"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserBirth(req.getParameter("userBirth"));
		userVO.setUserAddress(req.getParameter("userAddress"));
		userVO.setUserPhone(req.getParameter("userPhone"));
		userVO.setUserEmail(req.getParameter("userEmail"));
		
		System.out.println((req.getParameter("userIdentification")));
		userDAO.insert(userVO);
		
		result.setRedirect(true);
//		result.setPath(req.getContextPath() + "/login.user");
		result.setPath(req.getContextPath() + "templates/kgm/loginForm.jsp");
		
		return result;
	}
}
