package com.Me_and_U.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.service.ChatbotService;
import com.Me_and_U.project.service.STTService;
import com.Me_and_U.project.service.TTSService;

@Controller
public class ChatbotController {

	private ChatbotService chatService;
	private STTService sttService;
	private TTSService ttsService;
	@Autowired 
	public ChatbotController(
			STTService sttService,
			 TTSService ttsService,
			 ChatbotService chatService) {
		this.sttService = sttService;
		this.ttsService = ttsService;
		this.chatService =chatService;
	}
			
	@RequestMapping("/chatbotForm")
    public String chatbotForm() {
		
		return "jsp/chatbotForm";
    }

}
