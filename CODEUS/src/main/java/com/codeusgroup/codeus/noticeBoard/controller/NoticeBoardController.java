package com.codeusgroup.codeus.noticeBoard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.codeusgroup.codeus.noticeBoard.model.service.NoticeBoardService;

@Controller
public class NoticeBoardController {

	@Autowired
	private NoticeBoardService nbService;
}
