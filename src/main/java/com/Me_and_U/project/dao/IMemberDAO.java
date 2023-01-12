package com.Me_and_U.project.dao;


import com.Me_and_U.project.model.MemberVO;

public interface IMemberDAO {
	
	public String loginCheck(String id);	// 로그인 상태 체크
	public void insertMember(MemberVO vo);	// 신규회원등록
}
