package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.model.FaqVO;
import com.Me_and_U.project.model.NoticeVO;
import com.Me_and_U.project.service.FaqService;
import com.Me_and_U.project.service.NoticeService;

@Controller
public class AdminController {
	@Autowired
	FaqService faqservice;
	@Autowired
	NoticeService noticeservice;
	
	@RequestMapping("/admin")
	public String admin(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		ArrayList<FaqVO> faqList = faqservice.listAllFaq();
		model.addAttribute("faqList",faqList);		
		
		ArrayList<NoticeVO> noticeList = noticeservice.listAllNotice();
		model.addAttribute("noticeList",noticeList);
		
		return "jsp/cscenter/admin";
	}
	
	
		//등록	
		@RequestMapping("/faqListInput")
		public String faqNewForm(HttpSession session) { 		  		 
			String memId = (String) session.getAttribute("sid");
			if (memId != null ){
			return "jsp/cscenter/faqNewForm";
			}else {
				return "redirect:/login";
			}
		}
		
		@RequestMapping("jsp/cscenter/faqNewForm")
		public String insertfaq(FaqVO faq,HttpSession session) {
			String memId = (String) session.getAttribute("sid");
			faq.setMemId(memId);		
			faqservice.insertfaq(faq);		
			return "redirect:/admin";
		}
}
