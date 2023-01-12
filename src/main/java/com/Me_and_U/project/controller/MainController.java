package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	// index 페이지 열기
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// 정기모임 개설 페이지 열기
	@RequestMapping("/regGatherRegister")
	public String regGatherRegister() {
		return "jsp/regGatherRegister";
	}
    
}
