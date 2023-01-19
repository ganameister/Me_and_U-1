package com.Me_and_U.project.service;

import java.util.ArrayList;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.ReviewVO;

public interface IBKListService {
	public void insertmybkList(String memId, String mybkListWrite); // 나의 버킷리스트 등록
	public ArrayList<MyBKListVO> myBKListView(String memId); // 나의 버킷리스트 목록 보여주기
	public void deletemyBKList(String mybkListNo); // 나의 버킷리스트 삭제
	public int checkMyBKLFinished(int mybkListNo, String memId); // Finished 0 or 1 check
	public void updateMyBKLFinished(int mybkListNo, String memId);
	
	public void comBKListInsert(ComBKListVO combklist); // 모두의 버킷리스트 등록
	public ArrayList<ComBKListVO> comBKListView(); // 모두의 버킷리스트 목록 보여주기
	public ComBKListVO detailViewComBKList(int combkListNo); // 모두의 버킷리스트 상세 페이지
	public void deletecomBKList(int combkListNo); // 모두의 버킷리스트 삭제
}
