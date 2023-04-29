package com.mealkitland.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mealkitland.Action;
import com.mealkitland.Result;
import com.mealkitland.user.dao.UserDAO;

public class LoginOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserDAO userDAO = new UserDAO();
		String userIdentification = req.getParameter("userIdentification");
		String userPassword = req.getParameter("userPassword");
		Long userId = 0L;
		HttpSession session = req.getSession();
		Result result = new Result();
		boolean autoLogin = Boolean.valueOf(req.getParameter("auto-login"));
		boolean saveId = Boolean.valueOf(req.getParameter("save-id"));
		result.setRedirect(true);
		String id = "";
		
		if(userIdentification == null) {
			if(req.getHeader("Cookie") != null) {
				Cookie[] cookies = req.getCookies();
				
				for(Cookie cookie: cookies) {
					if(cookie.getName().equals("userIdentification")) {
						userIdentification = cookie.getValue();
					}
					if(cookie.getName().equals("userPassword")) {
						userPassword = cookie.getValue();
					}
					if(cookie.getName().equals("autoLogin")) {
						autoLogin = Boolean.valueOf(cookie.getValue());
					}
					if(cookie.getName().equals("saveId")) {
						saveId = Boolean.valueOf(cookie.getValue());
					}
					
				}
				
			}
		}
		
		
		userId = userDAO.login(userIdentification, userPassword);
		
			
		if(userId == null) {
//			로그인 실패 
			result.setPath(req.getContextPath()+ "/login.user?=false");
//			로그인 실패
			result.setPath(req.getContextPath()+ "/loginForm.user?=false");
				
		}else {
//			로그인 성공
			session.setAttribute("userId", userId);
			if(userIdentification.equals("admin")) {
				result.setPath(req.getContextPath()+ "/templates/kyj/manageProduct.jsp");
			}else {
				result.setPath(req.getContextPath()+ "/templates/ksj/main.jsp");
			}
			if(autoLogin) {
				Cookie userIdentificationInCookie = new Cookie("userIdentification", userIdentification);
				Cookie userPasswordInCookie = new Cookie("userPassword", userPassword);
				Cookie autoLoginInCookie = new Cookie("autoLogin", String.valueOf(autoLogin));
				resp.addCookie(userIdentificationInCookie);
				resp.addCookie(userPasswordInCookie);
				resp.addCookie(autoLoginInCookie);
				if(saveId) {
					Cookie saveIdInCookie = new Cookie("saveId", String.valueOf(saveId));
					resp.addCookie(saveIdInCookie);	
				}	
			}
			else {
				if(req.getHeader("Cookie") != null) {
					Cookie[] cookies = req.getCookies();

					for(Cookie cookie: cookies) {
						if(cookie.getName().equals("saveId")) {
							 resp.addCookie(new Cookie("saveId", null));
						}
						if(cookie.getName().equals("autoLogin")) {
							cookie.setMaxAge(0); // 초단위
							resp.addCookie(cookie);
						}
					}
				}
			}
		}
		
		return result;
	}
   
}
