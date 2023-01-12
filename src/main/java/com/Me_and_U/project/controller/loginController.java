package com.Me_and_U.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Me_and_U.project.model.MemberVO;
import com.Me_and_U.project.service.MemberService;

@Controller
public class loginController {
	@Autowired
	MemberService service;
	
	@RequestMapping("/memberJoin")
	public String loginPage() {
		return "jsp/memberJoin";
	}
	
	@RequestMapping("/member/insert")
	public String insert(MemberVO vo, @RequestParam("memHp1") String memHp1,
									  @RequestParam("memHp2") String memHp2,
									  @RequestParam("memHp3") String memHp3,
									  @RequestParam("memBirth1") String memBirth1,
									  @RequestParam("memBirth2") String memBirth2,
									  @RequestParam("memBirth3") String memBirth3,
									  @RequestParam("memEmail") String memEmail,
									  @RequestParam("memDomain") String memDomain) {
		vo.setMemHP(memHp1 + "-" + memHp2 + "-" + memHp3);
		vo.setMemBirth(memBirth1 + "-" + memBirth2 + "-" + memBirth3);
		vo.setMemEmail(memEmail + "@" + memDomain);
		service.insertMember(vo);
		return "jsp/login";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "jsp/login";
	}
}
