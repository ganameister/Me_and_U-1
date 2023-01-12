package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BucketListController {
	
	// 나의 버킷리스트 페이지 열기
	@RequestMapping("/mybucketlist")
	public String mybucketlist() {
		return "jsp/mybucketlist";
	}
	
	// 모두의 버킷리스트 페이지 열기
	@RequestMapping("/combucketlist")
	public String combucketlist() {
		return "jsp/combucketlist";
	}
}
