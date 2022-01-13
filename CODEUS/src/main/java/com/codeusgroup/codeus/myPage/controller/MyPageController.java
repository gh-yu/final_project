package com.codeusgroup.codeus.myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.codeusgroup.codeus.myPage.model.service.MyPageService;


@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService mpService;
}
