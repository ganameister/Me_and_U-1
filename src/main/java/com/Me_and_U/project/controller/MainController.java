package com.Me_and_U.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.BKListService;
import com.Me_and_U.project.service.ReviewService;

@Controller
public class MainController {
	@Autowired
	ReviewService rvservice;
	@Autowired
	BKListService bkservice;
	
	// index 페이지 열기
	@RequestMapping("/")
	public String index(Model model) {
		
		ArrayList<ReviewVO> reviewRec = rvservice.listRecentReview();
		model.addAttribute("reviewRec",reviewRec);
		
		ArrayList<ComBKListVO> combkRec = bkservice.listRecentComBKList();
		model.addAttribute("combkRec",combkRec);
		
		return "index";
	}
	
	
	// 정기모임 개설 페이지 열기
	@RequestMapping("/regGatherRegister")
	public String regGatherRegister() {
		return "jsp/regGatherRegister";
	}
    
}
