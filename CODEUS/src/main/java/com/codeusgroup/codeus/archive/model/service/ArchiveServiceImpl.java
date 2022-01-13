package com.codeusgroup.codeus.archive.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeusgroup.codeus.archive.model.dao.ArchiveDAO;

@Service("archService")
public class ArchiveServiceImpl implements ArchiveService {

	@Autowired
	private ArchiveDAO archDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
