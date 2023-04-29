package com.mealkitland.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.user.dao.UserDAO;

public class CheckEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		UserDAO userDAO = new UserDAO();
		String userEmail = req.getParameter("userEmail");
		boolean check = userDAO.selectEmail(userEmail) == null; // 없으니까 null이니까 사용가능, null이 아니면 중복이니까 사용 불가능
		JSONObject result = new JSONObject();
		
		try {
			result.put("check", check);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		PrintWriter out = resp.getWriter();
		out.print(result.toString());
		out.close();
		
		return null;
	}

}
