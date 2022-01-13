package com.codeusgroup.codeus.noticeBoard.model.service;

import java.util.ArrayList;

import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoard;
import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoardFile;

public interface NoticeBoardService {

	int getListCount();

	int insertNoticeBoard(NoticeBoard noticeBoard, ArrayList<NoticeBoardFile> fList);

}
