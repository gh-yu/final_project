package com.codeusgroup.codeus.noticeBoard.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codeusgroup.codeus.common.FileManager;
import com.codeusgroup.codeus.noticeBoard.common.Pagination;
import com.codeusgroup.codeus.noticeBoard.model.exception.NoticeBoardException;
import com.codeusgroup.codeus.noticeBoard.model.service.NoticeBoardService;
import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoard;
import com.codeusgroup.codeus.noticeBoard.model.vo.NoticeBoardFile;
import com.codeusgroup.codeus.noticeBoard.model.vo.PageInfo;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;

@Controller
public class NoticeBoardController {

	@Autowired
	private NoticeBoardService nbService;
	
	@Autowired
	private FileManager fileManager;
	
    /**
     * 공지사항 목록 조회
     */	
	@RequestMapping("noticeBoardList.nb")
	public ModelAndView noticeBoardList(@RequestParam(value="page", required=false) Integer page, 
								        @RequestParam(value="message", required=false) String message, ModelAndView mv) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = nbService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		mv.addObject("message", message);
		mv.setViewName("noticeBoardList");
		
		
		return mv;
		
	}
	
    /**
     *  게시글 작성 페이지로 이동
     */	
	@RequestMapping("nbinsertView.nb")
	public String noticeBoardInsertView() {
		
		return "noticeBoardInsertForm";
	}
	
	/**
     * summernote 이미지 업로드
     */	
	@RequestMapping(value="/uploadSummernoteImageFile.nb", produces = "application/json")
	@ResponseBody
	public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {
		System.out.println(multipartFile);
		JsonObject jsonObject = new JsonObject();
		
		String fileRoot = "C:\\summernote_image\\";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/summernoteImage/"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		return jsonObject;
	}
	
	/**
     * 다중파일 업로드
     */	
	@RequestMapping(value="uploadFiles.nb", produces = "application/json")
	public void uploadFiles(@RequestParam("files") List<MultipartFile> uploadFileList, HttpServletRequest request, HttpServletResponse response) {
		// System.out.println(uploadFileList.get(0));
		// System.out.println(uploadFileList.size());
		
		if (uploadFileList != null && !uploadFileList.isEmpty()) {
			
			ArrayList<NoticeBoardFile> fList = new ArrayList<NoticeBoardFile>();
			
			for (MultipartFile f : uploadFileList) {
				
				String path = "/uploadFiles";
				String root = request.getSession().getServletContext().getRealPath("resources");
				String savePath = root + path;
				
				String renameFileName = fileManager.saveFile(f, request, path);
				
				if (renameFileName != null) {
					NoticeBoardFile file = new NoticeBoardFile();
					file.setFileOriginName(f.getOriginalFilename());
					file.setFileChangeName(renameFileName);
					file.setFilePath(savePath);
					
					fList.add(file);
				}
			}
			
			// file을 저장한 후 DB에 file에 대한 정보를 저장하기 위해 저장한 fileList를 뷰에 보냄
			if (!fList.isEmpty()) {
				Gson gson = new Gson();
				try {
					gson.toJson(fList, response.getWriter());
				} catch (JsonIOException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				throw new NoticeBoardException("파일 저장에 실패하였습니다.");
			}
		}
	}
	
	/**
     * 게시글 등록
     */	
	@RequestMapping("nbinsert.nb")
	public String insertNoticeBoard(@ModelAttribute NoticeBoard noticeBoard, 
									@RequestParam(value="fileOriginName", required=false) String[] fileOriginName, 
									@RequestParam(value="fileChangeName", required=false) String[] fileChangeName,
									@RequestParam(value="filePath", required=false) String[] filePath, Model model, HttpServletRequest request) {
		System.out.println(noticeBoard);
		if(noticeBoard.getPin() == null) {
			noticeBoard.setPin("N");
		}
		
		ArrayList<NoticeBoardFile> fList = new ArrayList<NoticeBoardFile>();
		if (fileOriginName != null) {
			
			for (int i = 0; i < fileOriginName.length; i++) {
				NoticeBoardFile file = new NoticeBoardFile();
				file.setFileOriginName(fileOriginName[i]);
				file.setFileChangeName(fileChangeName[i]);
				file.setFilePath(filePath[i]);
				
				fList.add(file);
				System.out.println(fList);
			}
		}
		
		int result = nbService.insertNoticeBoard(noticeBoard, fList);
		System.out.println(fList.size());
		
		if (result < fList.size() + 1) {
			// 게시글 등록 실패시 저장된 파일 삭제 
			if (!fList.isEmpty()) {
				for (NoticeBoardFile f : fList) {
					fileManager.deleteFile(f.getFileChangeName(), request, "/uploadFiles");
				}
			}
			
			throw new NoticeBoardException("파일 저장에 실패하였습니다.");
		}
		
		return "redirect:noticeBoardList.nb?messgae=success";
	}
	
	// 게시글 삭제 또는 기존 파일 삭제시  file삭제하고 DB file_status 0으로 바꾸기
	
}
