package com.Me_and_U.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IMemberDAO;
import com.Me_and_U.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	// 로그인 체크
	@Override
	public String loginCheck(HashMap<String, Object> map) {
		// 
		String encodedPw = dao.loginCheck((String)map.get("id"));
		
		String result = "fail";
		
		if(encodedPw != null && passwordEncoder.matches((String)map.get("pwd"), encodedPw));{
			result = "success";
		}
		return result;
	}

	@Override
	public void insertMember(MemberVO vo) {
		
		// 입력한 비밀번호를 암호화해서 저장
		// vo에서 비밀번호 가져와서 암호화한 후
		String encodedPassword = passwordEncoder.encode(vo.getMemPw());
		
		// 암호화된 비밀번호로 vo에 저장한 후 vo를 mapper에 보내서 db에 저장
		vo.setMemPw(encodedPassword); // vo에 암호화된 비밀번호 저장
			
		dao.insertMember(vo);
	}

}
