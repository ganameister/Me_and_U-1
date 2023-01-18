package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	@RequestMapping("/mypage")
	private String mypage() {
		return "jsp/mypage";
	}
	
	@RequestMapping("/myreviewpage")
	private String myreviewpage() {
		return "jsp/myreviewpage";
	}
	
	@RequestMapping("/myselectregpage")
	private String myselectregpage() {
		return "jsp/myselectregpage";
	}
}
