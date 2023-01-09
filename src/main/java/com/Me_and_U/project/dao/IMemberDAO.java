package com.Me_and_U.project.dao;


import com.Me_and_U.project.model.MemberVO;

public interface IMemberDAO {
	
	// 비밀번호 암호화하는 경우 사용하는 메소드
	public String loginCheck(String id);
	public void insertMember(MemberVO vo);
}
