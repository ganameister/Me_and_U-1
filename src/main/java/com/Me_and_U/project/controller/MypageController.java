package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Me_and_U.project.model.MemberVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;
import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.BKListService;
import com.Me_and_U.project.service.MemberService;
import com.Me_and_U.project.service.ReviewService;


@Controller
public class MypageController {
	@Autowired
	BKListService BKLservice;
	@Autowired
	ReviewService Revservice;
	@Autowired
	MemberService Memservice;
	
	@RequestMapping("/mypage")
	private String mypage(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		ArrayList<MyBKListVO> myBKList = BKLservice.MypagemyBKListView(memId);
		model.addAttribute("myBKList", myBKList);
		
		ArrayList<MyComBKListVO> mycomBKList = BKLservice.mycomBKListView(memId);
		model.addAttribute("mycomBKList", mycomBKList);
		return "jsp/mypage";
	}
	
	@RequestMapping("/reviewMypage")
	public String reviewMypage(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
		model.addAttribute("reviewMy",reviewMy);			
		return "jsp/reviewMypage";
	}
	
	@RequestMapping("/myreviewpage")
	public String myreviewpage(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
		model.addAttribute("reviewMy",reviewMy);			
		return "jsp/myreviewpage";
	}
	
	

	@RequestMapping("/myselectregpage")
	private String myselectregpage() {
		return "jsp/myselectregpage";
	}
	@RequestMapping("/myinfoeditpage")
	private String myinfoeditpage() {
		return "jsp/myinfoeditpage";
	}
	// 회원가입 완료시
	@RequestMapping("/member/update")
	public String Update(MemberVO vo, @RequestParam("memHp1") String memHp1,
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
		
	//	Memservice.updateMember(vo);
		return "jsp/mypage";
	}
}
