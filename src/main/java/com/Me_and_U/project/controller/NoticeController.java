package com.Me_and_U.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.model.NoticeVO;
import com.Me_and_U.project.service.NoticeService;



@Controller
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	@RequestMapping("/noticeListView")
	public String listAllNotice(Model model) {
		ArrayList<NoticeVO> noticeList = service.listAllNotice();
		model.addAttribute("noticeList",noticeList);			
		return "jsp/cscenter/noticeListView";
	}
	
	@RequestMapping("/cscenter/detailViewNotice/{noticeNo}")
	public String detailViewnotice(@PathVariable int noticeNo,
			Model model) {
		NoticeVO notice = service.detailViewNotice(noticeNo);
		model.addAttribute("notice",notice);
		return "jsp/cscenter/noticeDetailView";	
	}
	
	
	
	
}
