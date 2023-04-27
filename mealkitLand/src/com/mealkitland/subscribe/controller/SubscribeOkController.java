package com.mealkitland.subscribe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.subscribe.dao.SubscribeDAO;

public class SubscribeOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		resp.setContentType("text/html; charset = utf-8");
//		Long userId = (Long)req.getAttribute("userId");
		JSONArray jsonAr = new JSONArray();
		SubscribeDAO subscribeDAO = new SubscribeDAO();
		subscribeDAO.select().stream().map(s -> new JSONObject(s)).forEach(jsonAr::put);
//		List<SubscribeDTO> list = subscribeDAO.select();
//		System.out.println(list);
		result.setPath("/templates/hdh/mypage2.jsp");
	
	
		req.setAttribute("subscribe",jsonAr.toString());
		return result;
	}
	
}
