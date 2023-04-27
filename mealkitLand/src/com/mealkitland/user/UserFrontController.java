package com.mealkitland.user;

import com.mealkitland.Result;
import com.mealkitland.user.controller.JoinOkController;
import com.mealkitland.user.controller.LoginOkController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("join")) {
			result = new Result();
			result.setPath("templates/kgm/joinForm.jsp");
			
		} else if(target.equals("joinOk")) {
			result = new JoinOkController().execute(req, resp);
			
		} else if(target.equals("login")) {
			result = new Result();
			result.setPath("templates/kgm/loginForm.jsp");
			
		} else if(target.equals("loginOk")) {
			result = new LoginOkController().execute(req, resp);
			
		} else if(target.equals("logout")) {
			req.getSession().invalidate();
			result = new Result();
			result.setPath("templates/kgm/loginForm.jsp" );
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
