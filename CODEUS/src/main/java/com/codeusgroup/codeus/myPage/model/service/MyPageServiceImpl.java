package com.codeusgroup.codeus.myPage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeusgroup.codeus.myPage.model.dao.MyPageDAO;

@Service("mpService")
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageDAO mpDAO;
}
