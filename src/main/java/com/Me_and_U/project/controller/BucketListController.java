package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BucketListController {
	
	// 나의 버킷리스트 페이지 열기
	@RequestMapping("/myBKList")
	public String myBKList() {
		return "jsp/myBKList";
	}
	
	// 모두의 버킷리스트 페이지 열기
	@RequestMapping("/comBKList")
	public String comBKList() {
		return "jsp/comBKList";
	}
	
	// 모두의 버킷리스트 등록 페이지 열기
	@RequestMapping("/comBKListRegister")
	public String comBKListRegister() {
		return "jsp/comBKListRegister";
	}

	// 모두의 버킷리스트 상세 페이지 열기
	@RequestMapping("/comBkListDetailpage")
	public String comBkListDetailpage() {
		return "jsp/comBkListDetailpage";
	}
}
