package com.codeusgroup.codeus.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.codeusgroup.codeus.member.model.exception.MemberException;
import com.codeusgroup.codeus.member.model.service.MemberService;
import com.codeusgroup.codeus.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("login.me")
	public String login(@ModelAttribute Member m, Model model) {
		
		Member loginUser = mService.memberLogin(m);
		
		if(loginUser != null) {
			model.addAttribute("loginUser", loginUser);
		} else {
			throw new MemberException("로그인에 실패하였습니다.");
		}
		
		return "redirect:home.do";
	}
	
	@RequestMapping("logout.me")
	public void login(SessionStatus session,  HttpServletRequest request, HttpServletResponse response) {
		
		session.setComplete();
		try {
			response.sendRedirect(request.getContextPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
