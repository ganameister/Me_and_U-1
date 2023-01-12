package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatbotController {


		@RequestMapping("/chatbot")
		public String chatbot(Model model) {	        
			return "jsp/chatbot";
		}

}
