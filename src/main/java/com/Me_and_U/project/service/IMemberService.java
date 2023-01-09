package com.Me_and_U.project.service;

import java.util.HashMap;

import com.Me_and_U.project.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
}
