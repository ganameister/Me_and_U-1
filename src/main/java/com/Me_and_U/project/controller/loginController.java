package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {
	@RequestMapping("/memberJoin")
	public String loginPage() {
		return "jsp/memberJoin";
	}
	
}
