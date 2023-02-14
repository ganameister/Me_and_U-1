package com.Me_and_U.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;
import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.BKListService;

@Controller
public class BucketListController {
	@Autowired
	BKListService service;
	
	/** ========== 나의 버킷리스트 page ========== 시작 **/
	
	// 나의 버킷리스트 페이지 열기
	@RequestMapping("/myBKList")
	public String myBKList(Model model,HttpSession session) {
		
		String memId = (String) session.getAttribute("sid");
		
		ArrayList<MyBKListVO> myBKList = service.myBKListView(memId);
		model.addAttribute("myBKList", myBKList);
		
		ArrayList<MyComBKListVO> mycomBKList = service.mycomBKListView(memId);
		model.addAttribute("mycomBKList", mycomBKList);
		
		return "jsp/bucketlist_my/myBKList";
	}
	
	
	// 나의 버킷리스트 등록
	@RequestMapping("/myBKList/myBKListInsert")
	public String insert(@RequestParam String mybkListWrite, Model model, HttpSession session) {

		String memId = (String) session.getAttribute("sid");

		if (memId != null) {

			service.insertmybkList(memId, mybkListWrite);

			ArrayList<MyBKListVO> myBKList = service.myBKListView(memId);
			model.addAttribute("myBKList", myBKList);

			return "redirect:/myBKList";
		} else {
			return "redirect:/login";
		}
	}
	
	// 나의 버킷리스트 삭제
	@ResponseBody
	@RequestMapping("/myBKList/deletemyBKList")
	public int deletemyBKList(@RequestParam("chbox[]") ArrayList<Integer> chkArr) {
		int result = 0; 
		
		// 배열에서 mybkListNo 추출해서 해당되는 상품 삭제
		if(chkArr != null) {
			for(int mybkNo : chkArr) {
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
	
	/** ======================================== **/
	
	// (나의 버킷리스트) 모두의 버킷리스트 목록 중복 검사
	@ResponseBody
	@RequestMapping("/myBKList/mycomBKListInsertCheck")
	public int mycomBKListInsertCheck(MyComBKListVO vo, HttpSession session,int combkListNo) {
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		
		//동일 버킷리스트가 존재하는 지 확인 : 동일 버킷리스트 개수 반환
		int count = service.checkCombklistInMybkl(vo.getCombkListNo(), memId);
		
		return count;
	}
	
	// (나의 버킷리스트) 모두의 버킷리스트 목록 추가
	@RequestMapping("/myBKList/mycomBKListInsert")
	public String mycomBKListInsert(MyComBKListVO vo, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
			
		service.insertMyComBKList(vo);
			
		return "redirect:/myBKList";
	}
	
	// (나의 버킷리스트) 모두의 버킷리스트 삭제
	@ResponseBody
	@RequestMapping("/myBKList/deletemycomBKList")
	public int deletemycomBKList(@RequestParam("chbox[]") ArrayList<Integer> chkArr) {
		int result = 0; 
		
		// 배열에서 mybkListNo 추출해서 해당되는 상품 삭제
		if(chkArr != null) {
			for(int mycombkNo : chkArr) {
				service.deletemycomBKList(mycombkNo);
			}
			
			result = 1; // 성공
		}
			
		return result;
	}
	
	// (나의 버킷리스트) 모두의 버킷리스트 완료 버튼 클릭 시 줄긋기
	@ResponseBody
	@RequestMapping("/myBKList/FinishedmycomBKList")
	public int FinishedMyComBKLFinished(HttpServletRequest request, HttpSession session) {
			
		String memId = (String)session.getAttribute("sid");
		int mycombkListNo = Integer.parseInt(request.getParameter("mycombkListNo"));
		
		int result = service.checkMyComBKLFinished(mycombkListNo, memId);
			
		service.updateMyComBKLFinished(mycombkListNo, memId);
			
		return result;
	}
	
	/** ========== 나의 버킷리스트 page 끝 ========== **/
	
	
	/** ========== 모두의 버킷리스트 page 시작 ========== **/
	
	// 모두의 버킷리스트 페이지 열기, 검색, 정렬
	@RequestMapping("/comBKList/{num}")
	public String comBKList(Model model, @RequestParam(value = "sortOption", defaultValue = "최신순") String sortOption,
										 @RequestParam(value = "keyword", required = false) String keyword, 
										 @RequestParam(value = "type", defaultValue = "notchoice") String type, 
										 @PathVariable int num) {

		// 게시글 개수 count
		int count = service.combkListNoCount();

		// 한 페이지에 출력할 게시물 개수
		int postNum = 8;

		// 페이징 번호
		int pageNum = (int) Math.ceil((double) count / postNum);

		// 출력할 게시물
		int displayPost = (num - 1) * postNum;

		ArrayList<ComBKListVO> sortedComBKList = null;
		ArrayList<ComBKListVO> comBKList = new ArrayList<>();
		
		if(keyword == null || keyword == "" || type == "notchoice") {
			if (sortOption.equals("최신순")) {
		        sortedComBKList = service.comBKListViewRec();
		    } else if (sortOption.equals("조회순")) {
		        sortedComBKList = service.comBKListViewCnt();
		    } else if (sortOption.equals("이름순")) {
		        sortedComBKList = service.comBKListViewTitle();
		    }
		} else if (keyword != null && type != "notchoice") {
			if (type.equals("combkListTitle")) {
				sortedComBKList = service.comBKListSearchTitle(keyword, sortOption);
			  } else if (type.equals("combkListSubtitle")) {
				sortedComBKList = service.comBKListSearchSubtitle(keyword, sortOption);
			  } else if (type.equals("combkListWrite")) {
				sortedComBKList = service.comBKListSearchWrite(keyword, sortOption);
			  }
	    }
		
		int displayPostSize = sortedComBKList.size();
		int pageNum2 = (int) Math.ceil((double) displayPostSize / postNum);
		
		for (int i = displayPost; i < displayPost + postNum && i < sortedComBKList.size(); i++) {
	        comBKList.add(sortedComBKList.get(i));
	    }
		
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("comBKList", comBKList);
		model.addAttribute("sortOption", sortOption);
		model.addAttribute("pageNum2", pageNum2);
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		model.addAttribute("currentPage", num);

		return "jsp/bucketlist_com/comBKList";
	}
	
	// 모두의 버킷리스트 등록 페이지 열기
	@RequestMapping("/comBKList/comBKListRegister")
	public String comBKListRegister(HttpSession session) {
		
		String memId = (String) session.getAttribute("sid");
		
		if (memId != null ){
			return "jsp/bucketlist_com/comBKListRegister";
		} else {
			return "redirect:/login";
		} 
	}
	
	// 모두의 버킷리스트 등록
	@RequestMapping("/comBKList/comBKListInsert")
	public String comBKListInsert(ComBKListVO combklist, @RequestParam("uploadFileOrigin") MultipartFile file,
												HttpSession session) throws  IOException {
			
			String memId = (String) session.getAttribute("sid");		
			String uploadPath = "C:/springWorkspace/me_and_u_images/";				
			String originalFileName = file.getOriginalFilename();	
			
			File sendFile = new File(uploadPath + originalFileName);		
			file.transferTo(sendFile);		
			
			combklist.setCombkListImg(originalFileName);	
			combklist.setMemId(memId);		
			
			service.comBKListInsert(combklist);		
			
			return "redirect:/comBKList/1";
		}

	// 모두의 버킷리스트 상세 페이지 열기 (글 주인에게만 삭제버튼 보임)
	@RequestMapping("/comBKList/comBkListDetailpage/{combkListNo}")
	public String comBkListDetailpage(@PathVariable String combkListNo, Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		model.addAttribute("memId", memId);
		
		service.combkListViewcnt(Integer.parseInt(combkListNo));
		
		ComBKListVO combklistDetail = service.detailViewComBKList(Integer.parseInt(combkListNo));
		model.addAttribute("combklistDetail", combklistDetail);
		
		return "jsp/bucketlist_com/comBkListDetailpage";
	}
	
	// 모두의 버킷리스트 삭제
	@RequestMapping("/comBKList/deletecomBKList")
	public String deletecomBKList(int combkListNo) { 
		
		service.deletecomBKList(combkListNo);	
		
		return "redirect:/comBKList/1";
	}
	
	/** ========== 모두의 버킷리스트 page 끝 ========== **/
}
