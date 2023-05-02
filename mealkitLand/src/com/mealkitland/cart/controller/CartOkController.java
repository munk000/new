package com.mealkitland.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.cart.dao.CartDAO;
import com.mealkitland.subscribe.dao.SubscribeDAO;

public class CartOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Result result = new Result();
		resp.setContentType("text/html; charset = utf-8");
//		Long userId = (Long)req.getAttribute("userId");
		CartDAO cartDAO = new CartDAO();
//		req.setAttribute("cartDTO", cartDAO.select(userId));
		req.setAttribute("cartDTO", cartDAO.select(1L));
		
		result.setPath("/templates/hdh/mypage5.jsp");
		return result;
	}

}
