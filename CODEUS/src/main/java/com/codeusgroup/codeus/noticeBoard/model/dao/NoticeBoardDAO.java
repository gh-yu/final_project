package com.codeusgroup.codeus.noticeBoard.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoard;
import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoardFile;

@Repository("nbDAO")
public class NoticeBoardDAO {

	public int getListCount() {
		return 0;
	}

	public int insertNoticeBoard(SqlSessionTemplate sqlSession, NoticeBoard noticeBoard) {
		return sqlSession.insert("noticeBoardMapper.insertNoticeBoard", noticeBoard);
	}
	
	public int insertBoardFile(SqlSessionTemplate sqlSession, ArrayList<NoticeBoardFile> fList) {
		int result = 0;
		for (NoticeBoardFile f : fList) {
			result += sqlSession.insert("noticeBoardMapper.insertBoardFile", f);
		}
		
		return result;
		
	}

}
