package com.Me_and_U.project.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.RegGatherVO;
import com.Me_and_U.project.service.GatherService;


@Controller
public class RegisterController {
	@Autowired
	GatherService service;
	
	// 정기모임 개설 '페이지' 열기
	@RequestMapping("/regGatherRegister")
	public String regGatherRegister(HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		if (memId != null )
			return "jsp/regGatherRegister";
		else 
			return "redirect:/login";
	}
	
	// 정기 모임 등록하기(DB연동)
	@RequestMapping("/regGather/RegGatherInsert")
	public String RegGatherInsert(RegGatherVO reggather, @RequestParam("uploadFileOrigin") MultipartFile file,
								  HttpSession session) throws  IOException {
			
			String memId = (String) session.getAttribute("sid");		
			String uploadPath = "C:/springWorkspace/me_and_u_images/";				
			String originalFileName = file.getOriginalFilename();	
			
			File sendFile = new File(uploadPath + originalFileName);		
			file.transferTo(sendFile);		
			
			reggather.setRegGatherImg(originalFileName);
			reggather.setMemId(memId);	
			reggather.setRegGatherNowNum(0);
			reggather.setRegGatherViewNum(0);
			
			System.out.println(reggather.getRegGatherStartDate());
			
			service.regGatherInsert(reggather);		
			
			return "redirect:/regGatherListView";
	}
	
	

	@RequestMapping("/temGatherRegister")
	public String temGatherRegister(Model model) {

		return "jsp/temGatherRegister";
	}
	
}
