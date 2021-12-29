package com.codeusgroup.codeus.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.codeusgroup.codeus.member.model.vo.Member;

@Repository
public class MemberDAO {

	public Member memberLogin(SqlSessionTemplate sqlSession, Member m) {
		Member loginUser = sqlSession.selectOne("memberMapper.memberLogin", m);
		
		return loginUser;
	}

}
