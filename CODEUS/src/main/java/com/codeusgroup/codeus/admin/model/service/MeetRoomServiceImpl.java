package com.codeusgroup.codeus.admin.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeusgroup.codeus.admin.model.dao.MeetRoomDAO;

@Service("meetService")
public class MeetRoomServiceImpl implements MeetRoomService {
	
	@Autowired
	private MeetRoomDAO meetDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
