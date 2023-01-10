package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class reviewController {

	// index 페이지 열기
		@RequestMapping("/review")
		public String review(Model model) {
	        
			return "jsp/review";
		}
}
