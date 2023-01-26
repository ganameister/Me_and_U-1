package com.Me_and_U.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.ReviewService;


@Controller
public class ReviewController {
	@Autowired
	ReviewService service;
	
	//리뷰게시판
	@RequestMapping("/reviewListView")
	public String listAllReview(Model model) {
		ArrayList<ReviewVO> reviewList = service.listAllReview();
		model.addAttribute("reviewList",reviewList);			
		return "jsp/review/reviewListView";
	} 
	//http://localhost:8080/listRecentReview
	//최신순
	@RequestMapping("/listRecentReview")
	public String listRecentReview(Model model) {
		ArrayList<ReviewVO> reviewRec = service.listRecentReview();
		model.addAttribute("reviewRec",reviewRec);			
		return "jsp/reviewPlus";
	} 
	//http://localhost:8080/reviewMypage
	//마이페이지 자신이 등록한 후기글 불러오기
	/*
	 * @RequestMapping("/reviewMypage") public String reviewMypage(Model
	 * model,HttpSession session) { String memId = (String)
	 * session.getAttribute("sid");
	 * 
	 * ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
	 * model.addAttribute("reviewMy",reviewMy); return "jsp/reviewMypage"; }
	 */
	
	//등록폼
	@RequestMapping("/reviewRegister")
	public String reviewRegister(HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		if (memId != null ){
			return "jsp/review/reviewRegister";
		}else {
			return "redirect:/login";
		}
				
	}
	//등록 이미지
	@RequestMapping("jsp/review/reviewRegister")
	public String insertReview(ReviewVO review,
								@RequestParam("uploadFileOrigin") MultipartFile file,
								HttpSession session) throws  IOException {
		
		String memId = (String) session.getAttribute("sid");		
		String uploadPath = "C:/springWorkspace/me_and_u_images/";				
		String originalFileName = file.getOriginalFilename();		
		File sendFile = new File(uploadPath + originalFileName);		
		file.transferTo(sendFile);		
		review.setReviewImg(originalFileName);		
		review.setMemId(memId);		
		service.insertReview(review);		
		return "redirect:/reviewListView";
		
	}
	
	//삭제
	@RequestMapping("/cscenter/deleteReview/{reviewNo}")
	public String deleteReview(@PathVariable int reviewNo) { 
		
		System.out.println(reviewNo);//
		service.deleteReview(reviewNo);		
		return "redirect:/reviewListView";
	}
	//마이페이지 삭제
//	@RequestMapping("/cscenter/deleteReview/{reviewNo}")
//	public String deleteReview(@PathVariable int reviewNo) { 
//		String memId = service.getMemId(reviewNo);
//		System.out.println(reviewNo);
//		service.deleteReview(reviewNo);		
//		return "redirect:/reviewListView";
//	}
	//밑에는 다시 수정할 예정!아직 미완성!!!		
	@RequestMapping("/review/detailViewReview/{reviewNo}")
	public String detailViewQna(@PathVariable String reviewNo,
								Model model,
								HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		model.addAttribute("memId", memId);
			
		ReviewVO reivew = service.detailViewReview(Integer.parseInt(reviewNo));	
		model.addAttribute("reivew",reivew);
		return "jsp/review/reviewDetailView";	
	}	
	
	//수정폼열기
	@RequestMapping("/cscenter/updateReview")
	public String updateReview(ReviewVO review) {		
		service.updateReview(review);		
		return "redirect:/reviewListView";
	}
		
	//수정
	@RequestMapping("/cscenter/reviewUpdateForm/{reviewNo}")
	public String reviewUpdateForm(@PathVariable String reviewNo,
										
			  						Model model) {
		
		ReviewVO review = service.detailViewReview(Integer.parseInt(reviewNo));	
		//integer.parsen
		model.addAttribute("review", review);		
		return "jsp/review/reviewUpdateForm";
	}
	
//	@RequestMapping("/cscenter/reviewUpdateForm/{reviewNo}")
//	public String reviewUpdateForm(@PathVariable String reviewNo,
//			  Model model) {
//		
//		ReviewVO review = service.detailViewReview(Integer.parseInt(reviewNo));	
//		//integer.parsen
//		model.addAttribute("review", review);		
//		return "jsp/review/reviewUpdateForm";
//	}
		
	
}
