package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Me_and_U.project.model.RegGatherVO;
import com.Me_and_U.project.service.GatherService;

@Controller
public class GatherListViewController {
	@Autowired
	GatherService service;
	
	// 정기모임 리스트 전체 보기
	@RequestMapping("/regGatherListView")
    public String regGatherListView(@RequestParam(value = "ctgSelectVal", defaultValue = "0") String ctgSelectDef,
                                    @RequestParam(value = "areaSelectVal", defaultValue = "0") String areaSelectVal,
                                    @RequestParam(value = "comNameSearch", required = false) String comNameSearch,
                                    Model model, ArrayList<RegGatherVO> regGList) {
        System.out.println(comNameSearch);

        if(ctgSelectDef.equals("0") && areaSelectVal.equals("0")) {
            regGList = service.listAllGather();
            model.addAttribute("regGList", regGList);
        } else if(!ctgSelectDef.equals("0") && areaSelectVal.equals("0") || !(comNameSearch == "")) {
            regGList = service.ctgChange(ctgSelectDef);
            model.addAttribute("regGList", regGList);
        } else if(!areaSelectVal.equals("0") && ctgSelectDef.equals("0")) {
            regGList = service.areaChange(areaSelectVal);
            model.addAttribute("regGList", regGList);
        } else if(!ctgSelectDef.equals("0") && !areaSelectVal.equals("0")) {
            regGList = service.ctg_areaChange(ctgSelectDef, areaSelectVal);
            model.addAttribute("regGList", regGList);
        }


        if(regGList.size()!=0) {
        String a = regGList.get(0).getRegGatherStartDate().substring(0, 16);
        model.addAttribute("regGatherStartDate", a);
        String b = regGList.get(0).getRegGatherEndDate().substring(0, 16);
        model.addAttribute("regGatherEndDate", b);
        }
        return "jsp/regGatherListView";
    }
	
	// 정기 모임 상세 페이지 열기
	@RequestMapping("/regGatherDetailpage/{regGatherNo}")
	public String regGatherDetailpage(@PathVariable int regGatherNo, Model model, 
									  HttpSession session ) {
		String memId = (String) session.getAttribute("sid");
		model.addAttribute("memId", memId);
		
		RegGatherVO reg = service.detailViewRegGather(regGatherNo);
		
		// 시작일 및 종료일 절삭
		/*
		 * String a = reg.get(0).getRegGatherStartDate().substring(0, 16);
		 * model.addAttribute("regGatherStartDate", a); String b =
		 * reg.get(0).getRegGatherEndDate().substring(0, 16);
		 * model.addAttribute("regGatherEndDate", b);
		 */
		
		model.addAttribute("reg", reg);
		
		return "jsp/regGatherDetailpage";
	}
	
	// 모두의 버킷리스트 삭제
		@RequestMapping("/deleteregG")
		public String deleteReg(int regGatherNo) { 
			System.out.println("==========================");
			System.out.println(regGatherNo);
			System.out.println("==========================");
			service.deleteReg(regGatherNo);	
			
			return "redirect:/regGatherListView";
		}
	
}