package com.Me_and_U.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Me_and_U.project.model.RegGatherVO;
import com.Me_and_U.project.service.GatherService;

@Controller
public class GatherListViewController {
	@Autowired
	GatherService service;
	
	// 정기모임 리스트 전체 보기
//	@RequestMapping("/regGatherListView")
//	public String regGatherListView(Model model) {
//		ArrayList<RegGatherVO> regGList = service.listAllGather();
//		model.addAttribute("regGList", regGList);
//		return "jsp/regGatherListView";
//	}	
//	@RequestMapping("/regGatherListView")
//	public String regGatherListView(Model model,RegGatherVO reggather) {
//		reggather = service.listAllGather();
//		//model.addAttribute("regGList", regGList);
//		return "jsp/regGatherListView";
//	}	
	
}