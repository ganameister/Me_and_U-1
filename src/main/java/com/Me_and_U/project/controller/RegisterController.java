package com.Me_and_U.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class RegisterController {

	@RequestMapping("/temGatherRegister")
	public String temGatherRegister(Model model) {

		return "jsp/temGatherRegister";
	}
	
	@RequestMapping("/comBKListGatherRegister")
	public String comBKListGatherRegister(Model model) {

		return "jsp/comBKListGatherRegister";
	}
	
}
