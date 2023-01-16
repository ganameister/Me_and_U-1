package com.Me_and_U.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.model.FaqVO;
import com.Me_and_U.project.service.FaqService;



@Controller
public class FaqController {
	
	@Autowired
	FaqService service;
	
	@RequestMapping("/faqListView")
	public String listAllFaq(Model model) {
		ArrayList<FaqVO> faqList = service.listAllFaq();
		model.addAttribute("faqList",faqList);			
		return "jsp/cscenter/faqListView";
	}
	
	@RequestMapping("/cscenter/detailViewFaq/{faqNo}")
	public String detailViewFaq(@PathVariable int faqNo,
			Model model) {
		FaqVO faq = service.detailViewFaq(faqNo);
		model.addAttribute("faq",faq);
		return "jsp/cscenter/faqDetailView";	
	}
	
	
	
	
}
