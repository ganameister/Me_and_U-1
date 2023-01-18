package com.Me_and_U.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.Me_and_U.project.model.QnaVO;
import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.ReviewService;


@Controller
public class ReviewController {
	@Autowired
	ReviewService service;
	
	
	//등록폼
	//http://localhost:8080/reviewRegister
	@RequestMapping("/reviewRegister")
	public String reviewRegister(Model model) {
		return "jsp/review/reviewRegister";
	}
	
	
	
	
	//리뷰게시판
	@RequestMapping("/reviewListView")
	public String listAllReview(Model model) {
		ArrayList<ReviewVO> reviewList = service.listAllReview();
		model.addAttribute("reviewList",reviewList);			
		return "jsp/review/reviewListView";
	} 
	
	//최신순
	@RequestMapping("/listRecentReview")
	public String listRecentReview(Model model) {
		ArrayList<ReviewVO> reviewRec = service.listRecentReview();
		model.addAttribute("reviewRec",reviewRec);			
		return "jsp/review/listRecentReview";
	} 
	@RequestMapping("/review/detailViewReview/{reviewNo}")
	public String detailViewQna(@PathVariable String reviewNo,
			Model model) {
		ReviewVO reivew = service.detailViewReview(Integer.parseInt(reviewNo));	
		model.addAttribute("reivew",reivew);
		return "jsp/review/reviewDetailView";	
	}
	
	
	//밑에 전부 다시수정
	//삭제
	@RequestMapping("/cscenter/deleteReview/{reviewNo}")
	public String deleteReview(@PathVariable int reviewNo) { 
		service.deleteReview(reviewNo);		
		return "redirect:/reviewListView";
	}
	
	
	// memId에 저장
			// 로그인 성공 시 설정한 세션 sid 값 가져와서 사용
	/*
	 * String memId = (String)session.getAttribute("sid"); vo.setMemId(memId); //
	 * vo의 memId 값 설정
	 */
	
	// 장바구니 삭제 : 배열로 만들어진 cartNo
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/product/deleteCart") public int
	 * deleteCart(@RequestParam("chbox[]") ArrayList<String> chkArr) {
	 *  int result =0;
	 * 
	 * // 배열에서 cartNo 추출해서 해당되는 상품 삭제 if(chkArr != null) { for(String carNo :
	 * chkArr) { service.deleteCart(carNo); } result = 1; // 성공 } return result; }
	 */
	//  출력할 정보 가져오기
	// (2)  정보 가져오기 ( 정보를 알기 위해서는 memId가 필요)
	//	MemberVO memVo = service.getMemberInfo(memId[0]);
	
	//수정
	@RequestMapping("/cscenter/reviewUpdateForm/{reviewNo}")
	public String reviewUpdateForm(@PathVariable String reviewNo,
			  Model model) {
		
		ReviewVO review = service.detailViewReview(Integer.parseInt(reviewNo));	
		//integer.parsen
		model.addAttribute("review", review);		
		return "jsp/review/reviewUpdateForm";
	}
	
	@RequestMapping("/cscenter/updateReview")
	public String updateReview(ReviewVO review) {		
		service.updateReview(review);		
		return "redirect:/reviewListView";
	}
	
	//등록
	@RequestMapping("/reviewListInput")
	public String reviewNewForm() { 		  		 
		return "jsp/review/reviewNewForm";
	}
		//->이미지 MultipartFiel file, memId httpSession으로 등록, 
		// 카테고리reivewCtg param으로 싹다 고치기
	@RequestMapping("jsp/review/reviewNewForm")
	public String insertReview(ReviewVO review) {
		service.insertReview(review);
		
		return "redirect:/reviewListView";
	}
	
	
	/*
	 * @RequestMapping("/fileUploadMultiple") public String
	 * fileUploadMultiple(@RequestParam("uploadFileMulti") ArrayList<MultipartFile>
	 * files, Model model) throws IOException { String uploadPath =
	 * "C:/springWorkspace/upload/";
	 * 
	 * ArrayList<String> originalFileNameList = new ArrayList<String>();
	 * 
	 * for(MultipartFile file : files) { String originalFileName =
	 * file.getOriginalFilename();
	 * 
	 * originalFileNameList.add(originalFileName);
	 * 
	 * UUID uuid = UUID.randomUUID(); String savedFileName = uuid.toString() + "_" +
	 * originalFileName;
	 * 
	 * File sendFile = new File(uploadPath + savedFileName);
	 * 
	 * file.transferTo(sendFile); }
	 * 
	 * model.addAttribute("originalFileNameList",originalFileNameList);
	 * 
	 * 
	 * return "upload/fileUploadMultipleResultView"; }
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
}
