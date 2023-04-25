package com.mealkitland.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.user.dao.UserDAO;

public class LoginOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse rep) throws IOException, ServletException {
		UserDAO userDAO = new UserDAO();
		Long userId = userDAO.login(req.getParameter("userIdentification"), req.getParameter("userPassword"));
		HttpSession session = req.getSession();
		Result result = new Result();
		
		result.setRedirect(true);
		
		if(userId == null) {
//			로그인 실패
			result.setPath(req.getContextPath()+ "/login.user?=false");
				
		}else {
//			로그인 성공
			session.setAttribute("userId", userId);
			result.setPath(req.getContextPath()+ "/main");
		}
		
		return null;
	}

}
