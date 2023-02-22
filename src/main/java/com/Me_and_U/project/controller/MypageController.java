package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;
import com.Me_and_U.project.model.MypageVO;
import com.Me_and_U.project.model.RegGatherVO;
import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.BKListService;
import com.Me_and_U.project.service.MemberService;
import com.Me_and_U.project.service.MypageService;
import com.Me_and_U.project.service.ReviewService;


@Controller
public class MypageController {
	@Autowired
	BKListService BKLservice;
	@Autowired
	ReviewService Revservice;
	@Autowired
	MemberService Memservice;
	@Autowired
	MypageService Myservice;
	
	//마이페이지
	@RequestMapping("/mypage")
	private String mypage(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		model.addAttribute("info", Memservice.getMemInfo(memId));
	
		
		ArrayList<MyBKListVO> myBKList = BKLservice.MypagemyBKListView(memId);
		model.addAttribute("myBKList", myBKList);
		
		ArrayList<MyComBKListVO> mycomBKList = BKLservice.mycomBKListView(memId);
		model.addAttribute("mycomBKList", mycomBKList);
		
		ArrayList<RegGatherVO> myregGather = Myservice.myRegGatherView(memId);
		model.addAttribute("myregGather", myregGather);		

		return "jsp/mypage";
	}
	
	//내가 쓴 리뷰 페이지
	@RequestMapping("/myreviewpage")
	public String myreviewpage(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
		model.addAttribute("reviewMy",reviewMy);			
		return "jsp/myreviewpage";
	}
	/*
	 * @RequestMapping("/reviewMypage") public String reviewMypage(Model
	 * model,HttpSession session) { String memId = (String)
	 * session.getAttribute("sid");
	 * 
	 * ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
	 * model.addAttribute("reviewMy",reviewMy); return "jsp/reviewMypage"; }
	 */
	
	//찜한정기모임
	@RequestMapping("/myselectregpage")
	private String myselectregpage(Model model,HttpSession session) {
		
		 String memId = (String) session.getAttribute("sid");
		 /* 
		 * ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
		 * model.addAttribute("reviewMy",reviewMy);
		 */
		return "jsp/myselectregpage";
	}
	
	@ResponseBody
	@RequestMapping("/mypage/regGatherInsertCheck")
	public int regGatherInsertCheck(MypageVO vo, HttpSession session,Integer regGatherNo) {
		String memId = (String)session.getAttribute("sid"); 
		vo.setMemId(memId);
		int count = Myservice.checkRegGatherInMypage(vo.getRegGatherNo(), memId);
		return count;
	}
	
	@RequestMapping("/mypage/regGatherInsert")
	public String regGatherInsert(MypageVO vo, HttpSession session) {
		String memId =	(String)session.getAttribute("sid"); 
		vo.setMemId(memId);
		Myservice.insertRegGatherInMypage(vo);
	return "redirect:/mypage";
	}
	
}
