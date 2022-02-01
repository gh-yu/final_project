package com.codeusgroup.codeus.approval.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codeusgroup.codeus.approval.model.service.ApprovalService;
import com.codeusgroup.codeus.common.FileManager;

@Controller
public class ApprovalController {
	
	@Autowired
	private ApprovalService apService;
	
	@Autowired
	private FileManager fileManager;	
	
	@RequestMapping("approvalmain.ap")
	public String approvalMainView() {
		return "approvalMain";
	}
	
	@RequestMapping("newdocument.ap")
	public String documentWriteForm(@RequestParam("form") String form) {
		return form;
	}
	
}
