package com.nokia.websocket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	
	//http://localhost:8080/kaliey/index.do?username=root#
	@RequestMapping(value = "/index")
	public String index(HttpServletRequest request,HttpSession session,Model model) throws Exception {
		String username = request.getParameter("username")==null?"":request.getParameter("username").toString().trim();
		if(!"".equals(username)) {
			session.setAttribute("username", username);
		}else {
			session.setAttribute("username", ""+Math.random());
		}
		return "index";
	}
	@RequestMapping(value = "/chat")
	public String test(HttpServletRequest request,HttpSession session,Model model) throws Exception {
		String username =  (String) session.getAttribute("username");
		if(!"".equals(username)) {
			session.setAttribute("username", username);
		}else {
			session.setAttribute("username", ""+Math.random());
		}
		return "chat";
	}
}
