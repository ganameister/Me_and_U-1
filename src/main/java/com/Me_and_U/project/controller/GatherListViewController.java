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
	
//	 정기모임 리스트 전체 보기
	@RequestMapping("/regGatherListView")
	public String regGatherListView(Model model) {
		ArrayList<RegGatherVO> regGList = service.listAllGather();
		model.addAttribute("regGList", regGList);
		
		String a = regGList.get(0).getRegGatherStartDate().substring(0, 16);
		model.addAttribute("regGatherStartDate", a);
		String b = regGList.get(0).getRegGatherEndDate().substring(0, 16);
		model.addAttribute("regGatherEndDate", b);
		
		return "jsp/regGatherListView";
	}
	
}