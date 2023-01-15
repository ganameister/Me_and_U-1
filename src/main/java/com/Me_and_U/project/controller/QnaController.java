package com.Me_and_U.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.model.QnaVO;
import com.Me_and_U.project.service.QnaService;



@Controller
public class QnaController {
	
	@Autowired
	QnaService service;
	
	@RequestMapping("/qnaListView")
	public String listAllQna(Model model) {
		ArrayList<QnaVO> qnaList = service.listAllQna();
		model.addAttribute("qnaList",qnaList);			
		return "jsp/cscenter/qnaListView";
	}
	
	@RequestMapping("/cscenter/detailViewQna/{qnaNo}")
	public String detailViewQna(@PathVariable int qnaNo,
			Model model) {
		QnaVO qna = service.detailViewQna(qnaNo);
		model.addAttribute("qna",qna);
		return "jsp/cscenter/qnaDetailView";	
	}
	
	
	
	@RequestMapping("/cscenter/deleteQna/{qnaNo}")
	public String deleteQna(@PathVariable int qnaNo) {
		service.deleteQna(qnaNo);		
		return "redirect:/qnaListView";
	}
	
	
	@RequestMapping("/cscenter/qnaUpdateForm/{qnaNo}")
	public String qnaUpdateForm(@PathVariable int qnaNo,
			  Model model) {
		
		QnaVO qna = service.detailViewQna(qnaNo);
		model.addAttribute("qna", qna);		
		return "jsp/cscenter/qnaUpdateForm";
	}
	
	@RequestMapping("/cscenter/updateQna")
	public String updateQna(QnaVO qna) {		
		service.updateQna(qna);		
		return "redirect:/qnaListView";
	}
	
}
