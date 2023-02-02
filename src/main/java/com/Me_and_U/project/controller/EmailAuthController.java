package com.Me_and_U.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Me_and_U.project.service.EmailAuthService;
import com.Me_and_U.project.service.MemberService;

@Controller
public class EmailAuthController {
	@Autowired
	private EmailAuthService mailService;
	@Autowired
	private MemberService memberService;
	
	// 이메일 인증
	@ResponseBody
	@RequestMapping("/emailCheck")
	public String emailCheck(@RequestParam("email") String email) {
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
	
	// 이름, 이메일 주소 정보 확인
	@ResponseBody
	@RequestMapping("/member/nameCheck")
	public String nameCheck(@RequestParam("memName") String memName,
							@RequestParam("memEmail") String memEmail) {
		String no_result = memberService.memInfoSearchNameCheck(memName, memEmail);
		String result="no_data";
		if(no_result != null) {
			result="data";
		}
		return result;
	}
	
	// 아이디, 이름, 이메일 주소 정보 확인
	@ResponseBody
	@RequestMapping("/member/pwSearchInfoCheck")
	public String pwSearchInfoCheck(@RequestParam("memId") String memId,
									@RequestParam("memName") String memName,
									@RequestParam("memEmail") String memEmail) {
		String no_result = memberService.memPwSearchInfoCheck(memId, memName, memEmail);
		String result="no_data";
		if(no_result != null) {
			result="data";
		}
		return result;
	}
}
