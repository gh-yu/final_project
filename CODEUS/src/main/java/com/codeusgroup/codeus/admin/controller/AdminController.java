package com.codeusgroup.codeus.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codeusgroup.codeus.admin.common.Pagination;
import com.codeusgroup.codeus.admin.model.exception.AdminException;
import com.codeusgroup.codeus.admin.model.service.AdminService;
import com.codeusgroup.codeus.admin.model.vo.Department;
import com.codeusgroup.codeus.admin.model.vo.Job;
import com.codeusgroup.codeus.admin.model.vo.PageInfo;
import com.codeusgroup.codeus.member.model.vo.Member;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService aService;
	
	@RequestMapping("admin/mlist.ad")
	public ModelAndView selectMemberList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = aService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Integer> memberCount = aService.getMemberCount();
		ArrayList<Member> mList = aService.selectMemberList(pi);
		ArrayList<Department> dList = aService.selectDepartmentList();
		ArrayList<Job> jList = aService.selectJobList();
		
		if(memberCount != null && mList != null && dList != null && jList != null) {
			mv.addObject("memberCount", memberCount);
			mv.addObject("pi", pi);
			mv.addObject("mList", mList);
			mv.addObject("dList", dList);
			mv.addObject("jList", jList);
			mv.setViewName("memberList");
		} else {
			throw new AdminException("멤버 리스트 조회에 실패하엿습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("admin/msearch.ad")
	public ModelAndView selectSearchMemberList(@RequestParam(value="page", required=false) Integer page, 
										 @RequestParam(value="selectDept", required=false) String selectDept,
										 @RequestParam(value="selectJob",  required=false) String selectJob,
										 @RequestParam(value="searchValue", required=false) String searchValue, ModelAndView mv) {
		
		HashMap<String, String> map = new HashMap();
		map.put("selectDept", selectDept);
		map.put("selectJob", selectJob);
		map.put("searchValue", searchValue);

		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = aService.getSearchListCount(map);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Integer> memberCount = aService.getMemberCount();
		ArrayList<Member> mList = aService.selectSearchMemberList(pi, map);
		ArrayList<Department> dList = aService.selectDepartmentList();
		ArrayList<Job> jList = aService.selectJobList();
	
		if(memberCount != null && mList != null && dList != null && jList != null) {
			mv.addObject("memberCount", memberCount);
			mv.addObject("pi", pi);
			mv.addObject("mList", mList);
			mv.addObject("dList", dList);
			mv.addObject("jList", jList);
			mv.addObject("selectDept", selectDept);
			mv.addObject("selectJob", selectJob);
			mv.addObject("searchValue", searchValue);
			mv.setViewName("memberList");
		} else {
			throw new AdminException("멤버 검색 결과 조회에 실패하엿습니다.");
		}
		
		return mv;
	}
	
}
