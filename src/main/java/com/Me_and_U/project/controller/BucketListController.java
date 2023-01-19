package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.service.BKListService;

@Controller
public class BucketListController {
	@Autowired
	BKListService service;
	
	// 나의 버킷리스트 페이지 열기
	@RequestMapping("/myBKList")
	public String myBKList(Model model,HttpSession session) {
		
		String memId = (String) session.getAttribute("sid");
		
		ArrayList<MyBKListVO> myBKList = service.myBKListView(memId);
		model.addAttribute("myBKList", myBKList);
		
		return "jsp/myBKList";
	}
	
	
	// 나의 버킷리스트 등록
	@RequestMapping("/myBKList/myBKListInsert")
	public String insert(@RequestParam String mybkListWrite, Model model, HttpSession session) {

		String memId = (String) session.getAttribute("sid");

		if (memId != null) {

			service.insertmybkList(memId, mybkListWrite);

			ArrayList<MyBKListVO> myBKList = service.myBKListView(memId);
			model.addAttribute("myBKList", myBKList);

			return "jsp/myBKList";
		} else {
			return "redirect:/login";
		}
	}
	
	// 나의 버킷리스트 삭제
	@ResponseBody
	@RequestMapping("/myBKList/deletemyBKList")
	public int deleteCart(@RequestParam("chbox[]") ArrayList<String> chkArr) {
		int result = 0; 
		
		// 배열에서 mybkListNo 추출해서 해당되는 상품 삭제
		if(chkArr != null) {
			for(String mybkNo : chkArr) {
				service.deletemyBKList(mybkNo);
			}
			
			result = 1; // 성공
		}
		
		return result;
	}
	
	// 나의 버킷리스트 완료 버튼 클릭 시 줄긋기
	@ResponseBody
	@RequestMapping("/myBKList/FinishedmyBKList")
	public int FinishedMyBKLFinished(HttpServletRequest request, HttpSession session) {
		
		String memId = (String)session.getAttribute("sid");
		int mybkListNo = Integer.parseInt(request.getParameter("mybkListNo"));
		
		int result = service.checkMyBKLFinished(mybkListNo, memId);
		
		service.updateMyBKLFinished(mybkListNo, memId);
		
		return result;
	}
	
	// 모두의 버킷리스트 페이지 열기
	@RequestMapping("/comBKList")
	public String comBKList() {
		return "jsp/comBKList";
	}
		
	// 모두의 버킷리스트 등록 페이지 열기
	@RequestMapping("/comBKListRegister")
	public String comBKListRegister() {
		return "jsp/comBKListRegister";
	}

	// 모두의 버킷리스트 상세 페이지 열기
	@RequestMapping("/comBkListDetailpage")
	public String comBkListDetailpage() {
		return "jsp/comBkListDetailpage";
	}
}
