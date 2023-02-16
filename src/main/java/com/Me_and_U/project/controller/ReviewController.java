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
import org.springframework.web.multipart.MultipartFile;

import com.Me_and_U.project.model.ReviewVO;
import com.Me_and_U.project.service.ReviewService;


@Controller
public class ReviewController {
	@Autowired
	ReviewService service;

	// 리뷰게시판
	@RequestMapping("/reviewListView")
	public String listAllReview(Model model) {
		ArrayList<ReviewVO> reviewList = service.listAllReview();
		model.addAttribute("reviewList", reviewList);
		return "jsp/review/reviewListView";
	}

	// http://localhost:8080/listRecentReview
	// 최신순
	@RequestMapping("/listRecentReview")
	public String listRecentReview(Model model) {
		ArrayList<ReviewVO> reviewRec = service.listRecentReview();
		model.addAttribute("reviewRec", reviewRec);
		return "jsp/reviewPlus";
	}
	// http://localhost:8080/reviewMypage
	// 마이페이지 자신이 등록한 후기글 불러오기
	/*
	 * @RequestMapping("/reviewMypage") public String reviewMypage(Model
	 * model,HttpSession session) { String memId = (String)
	 * session.getAttribute("sid");
	 * 
	 * ArrayList<ReviewVO> reviewMy = Revservice.reviewMypage(memId);
	 * model.addAttribute("reviewMy",reviewMy); return "jsp/reviewMypage"; }
	 */

	// 등록폼
	@RequestMapping("/reviewRegister")
	public String reviewRegister(HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		if (memId != null) {
			return "jsp/review/reviewRegister";
		} else {
			return "redirect:/login";
		}

	}

	// 등록 이미지
	@RequestMapping("jsp/review/reviewRegister")
	public String insertReview(ReviewVO review, @RequestParam("uploadFileOrigin") MultipartFile file,
			HttpSession session) throws IOException {

		String memId = (String) session.getAttribute("sid");
//		String uploadPath = "C:/springWorkspace/me_and_u_images/"; // 로컬 호스트용
		String uploadPath = "/usr/local/project/upload_me_and_u_images/"; // 서버 전용
		String originalFileName = file.getOriginalFilename();
		File sendFile = new File(uploadPath + originalFileName);
		file.transferTo(sendFile);
		review.setReviewImg(originalFileName);
		review.setMemId(memId);
		service.insertReview(review);
		return "redirect:/reviewListView";

	}

	// 삭제
	@RequestMapping("/deleteReview")
	public String deleteReview(@RequestParam("reviewNo") int reviewNo) {
		service.deleteReview(reviewNo);
		return "redirect:/reviewListView";
	}


	//리뷰검색
	@RequestMapping("/reviewSearch")
	public String reviewSearch(@RequestParam HashMap<String, Object> param,
												   Model model){
		ArrayList<ReviewVO> reviewList = service.reviewSearch(param);
		model.addAttribute("reviewList", reviewList);
		return "jsp/review/reviewSearchResult";
	}
	
	//수정	
	@RequestMapping("/jsp/review/reviewUpdateForm/{reviewNo}")
	public String reviewUpdateForm(@PathVariable String reviewNo,
									
									Model model)throws  IOException {
		
		ReviewVO review = service.detailViewReview(Integer.parseInt(reviewNo));
		
		//System.out.println(review.getReviewNo());
		//System.out.println(review.getReviewImg());
		
							
		model.addAttribute("review", review);				
		return "jsp/review/reviewUpdateForm";
	}
	
	// 수정값 update
	@RequestMapping("/jsp/review/reviewUpdateForm")
	public String updateReview(ReviewVO review,
			@RequestParam("uploadFileOrigin") MultipartFile file,
			HttpServletRequest request
			)throws  IOException {
				//System.out.println("수정값 update컨트롤러");//작동
				//System.out.println(review.getReviewNo());	
		
		
		//새로운 파일이 등록되었는지 확인
	      if(file.getOriginalFilename() != null && file.getOriginalFilename() !="") {
	          //if(file.getOriginalFilename() != null && !file.getOriginalFilename().equals(""))
	         
	    	  //기존 파일을 삭제
	          String uploadPath = "C:/springWorkspace/me_and_u_images/";
	          new File(uploadPath + request.getParameter("reviewImg")).delete();

	          //새로 파일을 등록
	          String originalFileName = file.getOriginalFilename();
	          File sendFile = new File(uploadPath + originalFileName);
	          file.transferTo(sendFile);
	          review.setReviewImg(originalFileName);

	     }else { 
	          
	    	 //새로운 파일이 등록안되었으면
	          //기존 이미지를 그대로 사용
	          review.setReviewImg(request.getParameter("reviewImg"));
	      }		
		
		
		service.updateReview(review);
		return "redirect:/reviewListView";
	}
		
}

// 마이페이지 삭제
//	@RequestMapping("/cscenter/deleteReview/{reviewNo}")
//	public String deleteReview(@PathVariable int reviewNo) { 
//		String memId = service.getMemId(reviewNo);
//		System.out.println(reviewNo);
//		service.deleteReview(reviewNo);		
//		return "redirect:/reviewListView";
//	}




