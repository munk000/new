package com.mealkitland.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mealkitland.Action;
import com.mealkitland.Result;

public class LoginController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userIdentification = null, userPassword = null;
		Result result = new Result();
		boolean autoLogin = false;
		
		if(req.getHeader("Cookie") != null){
			Cookie[] cookies = req.getCookies();
			
			for(Cookie cookie: cookies){
				if(cookie.getName().equals("userIdentification")) {
					userIdentification = cookie.getValue();
				}
				if(cookie.getName().equals("userPassword")) {
					userPassword = cookie.getValue();
				}
				if(cookie.getName().equals("autoLogin")) {
					autoLogin = Boolean.valueOf(cookie.getValue());
				}
			}
		}
		
		if(userIdentification != null) {
			req.setAttribute("userIdentification", userIdentification);
			req.setAttribute("userPassword", userPassword);
			result.setPath("loginOk.member");
		}else {
			if(autoLogin) {
				req.setAttribute("autoLogin", autoLogin);
			}
			result.setPath("templates/kgm/loginForm.jsp");
		}
		
		return result;
	}

}
