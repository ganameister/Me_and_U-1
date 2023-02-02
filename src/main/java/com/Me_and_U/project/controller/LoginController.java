package com.Me_and_U.project.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Me_and_U.project.model.MemberVO;
import com.Me_and_U.project.service.MemberService;

@Controller
public class LoginController {
	@Autowired
	MemberService memberservice;
	
	// 회원가입 페이지 열기
	@RequestMapping("/memberJoin")
	public String loginPage() {
		return "jsp/memManagement/memberJoin";
	}
	
	
	// 로그인 페이지 열기
	@RequestMapping("/login")
	public String login() {
		return "jsp/memManagement/login";
	}
	
	// 로그인 체크
	@ResponseBody
	@RequestMapping("/member/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
												HttpSession session) {
		// 로그인 체크 결과 
		String result = memberservice.loginCheck(param); // result : "success" 또는 "fail"
		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
		// 서비스에서 "success" 반환받았으면
		if(result.equals("success")) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));
		}
		return result;
	}
	
	//로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	

	// 회원가입 완료시
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
		
		memberservice.insertMember(vo);
		return "jsp/memManagement/login";
	}
	
	// id중복 체크
	@ResponseBody
	@RequestMapping("/memberJoin/idCheck")
	public String idCheck(@RequestParam("id") String memId) {
		String no_result = memberservice.memJoinIdCheck(memId);
		String result="use";
		System.out.println("no_result = " + no_result);
		if(no_result != null) {
			result="no_use";
		}
		return result;
	}
	
	// 아이디 찾기 이메일 인증 페이지 열기
	@RequestMapping("/member/idSearchEmailAuth")
	public String idSerachPage() {
		return "jsp/memManagement/idSearch";
	}
	
	// 아이디 찾기 결과 페이지 열기
	@RequestMapping("/member/idSearchResult/{memName}/{memEmail}")
	public String idSearchResult(@PathVariable String memName,
								 @PathVariable String memEmail, Model model) {
		MemberVO memInfo = memberservice.memIdInfo(memName, memEmail);
		model.addAttribute("memInfo", memInfo);
		return "jsp/memManagement/idSearchResult";
	}
	
	// 비밀번호 찾기 아이디 인증 페이지 열기
	@RequestMapping("/member/pwSearchIdAuth")
	public String pwSerachPage() {
		return "jsp/memManagement/identification";
	}
	
	// 비밀번호 변경 이메일 인증 페이지 열기
	@RequestMapping("/member/pwSearchEmailAuth")
	public String pwSearch() {
		
		return "jsp/memManagement/pwSearch";
	}
	
	// 비밀번호 찾기 결과 페이지 열기
	@RequestMapping("/member/pwSearchResultPage")
	public String pwSearchResult() {
		return "jsp/memManagement/pwSearchResult";
	}
	
	// 비밀번호 찾기 결과 - 비밀번호 변경 불러오기
	@RequestMapping("/member/pwChange")
	public String pwChage(@RequestParam("memId") String memId,
						@RequestParam("memPw") String memPw) {
		
		System.out.println(memId + " " + memPw);
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);
		vo.setMemPw(memPw);
		memberservice.pwChage(vo);
		return "jsp/memManagement/login";
	}
}
