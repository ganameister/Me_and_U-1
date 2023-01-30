package com.Me_and_U.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.Me_and_U.project.model.ReviewVO;

public interface IReviewService {
	public ArrayList<ReviewVO> listAllReview();
	public ArrayList<ReviewVO> listRecentReview(); //최신순
	public ReviewVO detailViewReview(int reviewNo); //상세페이지
	public ArrayList<ReviewVO> reviewMypage(String memId); //마이페이지 후기
	public void updateReview(ReviewVO review); //수정
	public void deleteReview(int reviewNo); 	//삭제
	public void insertReview(ReviewVO review); //등록
	public ArrayList<ReviewVO> reviewSearch(HashMap<String, Object> map);
}
