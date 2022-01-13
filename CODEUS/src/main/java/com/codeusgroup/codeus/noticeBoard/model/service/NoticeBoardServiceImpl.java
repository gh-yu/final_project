package com.codeusgroup.codeus.noticeBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codeusgroup.codeus.noticeBoard.model.dao.NoticeBoardDAO;
import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoard;
import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoardFile;

@Service("nbService")
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardDAO nbDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getListCount() {
		return nbDAO.getListCount();
	}

	@Override
	@Transactional
	public int insertNoticeBoard(NoticeBoard noticeBoard, ArrayList<NoticeBoardFile> fList) {
		
		int result1 =  nbDAO.insertNoticeBoard(sqlSession, noticeBoard);
		
		int result2 = 0;
		if (result1 > 0 && !fList.isEmpty()) {
			result2 = nbDAO.insertBoardFile(sqlSession, fList);
		}
		
		return result1 + result2;
	}
}
