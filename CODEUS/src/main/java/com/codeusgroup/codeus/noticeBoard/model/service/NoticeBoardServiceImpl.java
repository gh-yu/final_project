package com.codeusgroup.codeus.noticeBoard.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeusgroup.codeus.noticeBoard.model.dao.NoticeBoardDAO;

@Service("nbService")
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardDAO nbDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
