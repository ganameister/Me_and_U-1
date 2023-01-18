package com.Me_and_U.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.service.BKListService;

@Controller
public class BucketListController {
	@Autowired
	BKListService service;
	
	// 나의 버킷리스트 페이지 열기
	@RequestMapping("/myBKList")
	public String myBKList() {
		return "jsp/myBKList";
	}
	
	// 나의 버킷리스트 등록
	@RequestMapping("/myBKList/InsertmyBKList")
	public String insert(@RequestParam String mybkListWrite, Model model, HttpSession session) {

		String memId = (String) session.getAttribute("sid");

		if (memId != null) {

			service.insertmybkList(memId, mybkListWrite);

			ArrayList<MyBKListVO> myBKList = service.myBKListView();
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
			for(String mybkListNo : chkArr) {
				service.deletemyBKList(mybkListNo);
			}
			
			result = 1; // 성공
		}
		
		return result;
	}
	
	// 나의 버킷리스트 완료 버튼 클릭 시 줄긋기
	@ResponseBody
	@RequestMapping("/myBKList/FinishedmyBKList")
	public int checkMyBKLFinished(MyBKListVO vo, HttpSession session) {
		
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId); //vo의 memId 값 설정
			
		int result = service.checkMyBKLFinished(vo.getMybkListNo(), memId);
		
		if(result == 0){
			service.updateMyBKLFinished(vo.getMybkListNo(), memId);
		}
			
//		service.updateMyBKLFinished(vo.getMybkListNo(), memId);
		
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
