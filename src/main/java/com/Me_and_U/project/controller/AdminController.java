package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	//관리자 admin1 일때만 접속가능 id 체크
	@RequestMapping("/admin")
	public String admin(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String admin = "admin1";
		if (memId.equals(admin) ){
			
			ArrayList<FaqVO> faqList = faqservice.listAllFaq();
			model.addAttribute("faqList",faqList);		
			
			ArrayList<NoticeVO> noticeList = noticeservice.listAllNotice();
			model.addAttribute("noticeList",noticeList);
						
			return "jsp/cscenter/admin";
		}
		else if (memId.equals(null)) {
			return "index";
		}
		else {
			return "index";
		}		
	}
	
	
	//FAQ등록	
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
	//Notice등록	
	@RequestMapping("/noticeListInput")
	public String noticeNewForm(HttpSession session) { 		  		 
		String memId = (String) session.getAttribute("sid");
		if (memId != null ){
		return "jsp/cscenter/noticeNewForm";
		}else {
			return "redirect:/login";
		}
	}
	
	@RequestMapping("jsp/cscenter/noticeNewForm")
	public String insertnotice(NoticeVO notice,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		notice.setMemId(memId);		
		noticeservice.insertnotice(notice);		
		return "redirect:/admin";
	}
	//FAQ삭제
	@RequestMapping("/cscenter/deletefaq/{faqNo}")
	public String deletefaq(@PathVariable int faqNo) { 
		faqservice.deletefaq(faqNo);
		return "redirect:/admin";
	}
	//FAQ수정
	@RequestMapping("/cscenter/faqUpdateForm/{faqNo}")
	public String faqUpdateForm(@PathVariable String faqNo,
	Model model) {

	FaqVO faq = faqservice.detailViewFaq(Integer.parseInt(faqNo));
	//integer.parsen
	model.addAttribute("faq", faq);
	return "jsp/cscenter/faqUpdateForm";
	}

	@RequestMapping("/cscenter/updatefaq")
	public String updatefaq(FaqVO faq) {
		faqservice.updatefaq(faq);
		return "redirect:/admin";
	}
	
	//Notice삭제
	@RequestMapping("/cscenter/deletenotice/{noticeNo}")
	public String deletenotice(@PathVariable int noticeNo) { 
		noticeservice.deletenotice(noticeNo);
		return "redirect:/admin";
	}
	//Notice수정
	@RequestMapping("/cscenter/noticeUpdateForm/{noticeNo}")
	public String noticeUpdateForm(@PathVariable String noticeNo,
	Model model) {

	NoticeVO notice = noticeservice.detailViewNotice(Integer.parseInt(noticeNo));
	//integer.parsen
	model.addAttribute("notice", notice);
	return "jsp/cscenter/noticeUpdateForm";
	}

	@RequestMapping("/cscenter/updatenotice")
	public String updatenotice(NoticeVO notice) {
		noticeservice.updatenotice(notice);
		return "redirect:/admin";
	}
}
