package com.codeusgroup.codeus.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeusgroup.codeus.admin.model.dao.AdminDAO;
import com.codeusgroup.codeus.admin.model.vo.Department;
import com.codeusgroup.codeus.admin.model.vo.Job;
import com.codeusgroup.codeus.admin.model.vo.PageInfo;
import com.codeusgroup.codeus.member.model.vo.Member;

@Service("aService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO aDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() {
		return aDAO.getListCount(sqlSession); 
	}

	@Override
	public ArrayList<Member> selectMemberList(PageInfo pi) {
		return aDAO.selectMemberList(sqlSession, pi);
	}

	@Override
	public ArrayList<Department> selectDepartmentList() {
		return aDAO.selectDepartmentList(sqlSession);
	}

	@Override
	public ArrayList<Job> selectJobList() {
		return aDAO.selectJobList(sqlSession);
	}

	@Override
	public int getSearchListCount(HashMap<String, String> map) {
		return aDAO.getSearchListCount(sqlSession, map);
	}

	@Override
	public ArrayList<Member> selectSearchMemberList(PageInfo pi, HashMap<String, String> map) {
		return aDAO.selectSearchMemberList(sqlSession, pi, map);
	}

	@Override
	public ArrayList<Integer> getMemberCount() {
		return aDAO.getMemberCount(sqlSession);
	}

	@Override
	public int updateMultiMember(String[] mArr, int mStatus) {
		return aDAO.updateMultiMember(sqlSession, mArr, mStatus);
	}

	@Override
	public int updateMember(Member m) {
		return aDAO.updateMember(sqlSession, m);
	}

	@Override
	public int deleteMember(String[] mIdArr) {
		return aDAO.deleteMember(sqlSession, mIdArr);
	}

}
