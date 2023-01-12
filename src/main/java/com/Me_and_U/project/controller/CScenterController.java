package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CScenterController {


		@RequestMapping("/cscenter")
		public String cscenter(Model model) {	        
			return "jsp/cscenter";
		}
//		@RequestMapping("/cscenterdetail")
//		public String cscenterdetail(Model model) {	        
//			return "jsp/cscenterdetail";
//		}
		
}
