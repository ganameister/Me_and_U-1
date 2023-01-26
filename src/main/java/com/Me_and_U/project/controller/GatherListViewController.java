package com.Me_and_U.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GatherListViewController {
	
	@RequestMapping("/regGatherListView")
	public String regGatherListView() {
		return "jsp/regGatherListView";
	}	
	
}
