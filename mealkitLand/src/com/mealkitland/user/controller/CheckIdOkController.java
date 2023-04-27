package com.mealkitland.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.user.dao.UserDAO;

public class CheckIdOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO();
		String userIdentification = userDAO.selectIdentification(req.getParameter("userIdentification"));
		System.out.println(userIdentification);
		boolean check = userIdentification == null; // true : 사용가능, false : 사용 불가능
		
		resp.setContentType("text/html;charset=utf-8");
		
		
		PrintWriter out = resp.getWriter();
		out.print(check);
		out.close();
		return null;
	}
	
}
