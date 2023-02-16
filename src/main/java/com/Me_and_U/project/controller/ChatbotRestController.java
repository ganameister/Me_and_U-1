package com.Me_and_U.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.Me_and_U.project.service.ChatbotService;
import com.Me_and_U.project.service.STTService;
import com.Me_and_U.project.service.TTSService;

@RestController
public class ChatbotRestController {

	private ChatbotService chatService;
	private STTService sttService;
	private TTSService ttsService;
	@Autowired 
	public ChatbotRestController(
			STTService sttService,
			 TTSService ttsService,
			 ChatbotService chatService) {
		this.sttService = sttService;
		this.ttsService = ttsService;
		this.chatService =chatService;
	}
	

	@RequestMapping("/stt")
	public String stt(@RequestParam("uploadFile") MultipartFile file,
			  Model model) throws IOException {

//		String uploadPath = "C:/springWorkspace/me_and_u_audio/"; // 로컬 호스트용
		String uploadPath = "/usr/local/project/upload_me_and_u_audios/"; // 서버 전용
		
		String originalFileName = file.getOriginalFilename();
		String filePathName = uploadPath + originalFileName;
		
		File sendFile = new File(filePathName);
				
		file.transferTo(sendFile);
		
		String result = sttService.stt(filePathName);		
	
		return result;
	}

				
	@RequestMapping("/chatbotTTS")
	public String chatbotTTS(@RequestParam("message") String message)  {	
		String result = ttsService.chatbotTTS(message);		
		return result;
	}	
	
	// 이미지 멀티링크 반환
	@RequestMapping("/chatbotMultimain")
	public String chatbotMulti(@RequestParam("message") String message)  {	
		String result = chatService.chatbotMultimain(message);		
		return result;
	}			
		
}
