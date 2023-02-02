package com.Me_and_U.project.dao;


import com.Me_and_U.project.model.MemberVO;

public interface IMemberDAO {
	
	// 비밀번호 암호화하는 경우 사용하는 메소드
	public String loginCheck(String id);
	public void insertMember(MemberVO vo);
	public String memJoinIdCheck(String memId); // 아이디 중복 체크
	public String memInfoSearchNameCheck(String memName, String memEmail); // 아이디 찾기 이름 체크
	public String memPwSearchInfoCheck(String memId, String memName, String memEmail); // 비밀번호 찾기 아이디, 이름, 이메일 체크
	public MemberVO memIdInfo(String memName, String memEmail);	// 아이디 값 가져오기
	public void pwChage(MemberVO vo);	// 비밀번호 변경
}
