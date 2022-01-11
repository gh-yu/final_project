package com.codeusgroup.codeus.archive.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.codeusgroup.codeus.archive.model.service.ArchiveService;

@Controller
public class ArchiveCotroller {
	
	@Autowired
	private ArchiveService archService;
}
