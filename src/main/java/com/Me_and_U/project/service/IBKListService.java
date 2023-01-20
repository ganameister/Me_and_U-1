package com.Me_and_U.project.service;

import java.util.ArrayList;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;

public interface IBKListService {
	public void insertmybkList(String memId, String mybkListWrite); // 나의 버킷리스트 등록
	public ArrayList<MyBKListVO> myBKListView(String memId); // 나의 버킷리스트 목록 보여주기
	public void deletemyBKList(int mybkListNo); // 나의 버킷리스트 삭제
	public int checkMyBKLFinished(int mybkListNo, String memId); // Finished 0 or 1 check
	public void updateMyBKLFinished(int mybkListNo, String memId); // mybkListFinished 0이면 1로, 1이면 0으로 업데이트
	
	public ArrayList<MyComBKListVO> mycomBKListView(String memId); // (나의 버킷리스트) 모두의 버킷리스트 목록 보여주기
	public int checkCombklistInMybkl(int combkListNo, String memId); // (나의 버킷리스트)의 모두의 버킷리스트 목록 중복 체크 
	public void insertMyComBKList(MyComBKListVO vo); // (나의 버킷리스트) 모두의 버킷리스트 테이블에 추가
	public void deletemycomBKList(int mycombkListNo); // (나의 버킷리스트) 모두의 버킷리스트 삭제
	public int checkMyComBKLFinished(int mycombkListNo, String memId); // Finished 0 or 1 check
	public void updateMyComBKLFinished(int mycombkListNo, String memId); // mybkListFinished 0이면 1로, 1이면 0으로 업데이트
	
	public void comBKListInsert(ComBKListVO combklist); // 모두의 버킷리스트 등록
	public ArrayList<ComBKListVO> comBKListView(); // 모두의 버킷리스트 목록 보여주기
	public ComBKListVO detailViewComBKList(int combkListNo); // 모두의 버킷리스트 상세 페이지
	public void deletecomBKList(int combkListNo); // 모두의 버킷리스트 삭제
}
