package com.mealkitland.subscribe;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mealkitland.Result;
import com.mealkitland.subscribe.controller.SubscribeOkController;
import com.mealkitland.user.controller.LoginOkController;

public class SubscribeFrontController extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
	
	String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
	Result result = null;
	
	
	if(target.equals("subscribeOk")) {
		result = new SubscribeOkController().execute(req, resp);
	}
	
	
	
	if(result != null) {
		if(result.isRedirect()){
			resp.sendRedirect(result.getPath());
		}else {
			req.getRequestDispatcher(result.getPath()).forward(req, resp);
		}
	}

}

	

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doGet(req, resp);
}
}
