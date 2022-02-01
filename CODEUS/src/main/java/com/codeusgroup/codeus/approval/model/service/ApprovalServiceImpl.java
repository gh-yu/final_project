package com.codeusgroup.codeus.approval.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeusgroup.codeus.approval.model.dao.ApprovalDAO;

@Service("apService")
public class ApprovalServiceImpl implements ApprovalService {
	
	@Autowired
	private ApprovalDAO apDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
