package com.Me_and_U.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;


public interface IBKListDAO {
	public void insertmybkList(HashMap<String, Object> map); //나의 버킷리스트 등록
	public ArrayList<MyBKListVO> myBKListView(String memId); // 나의 버킷리스트 목록 보여주기
	public void deletemyBKList(int mybkListNo); // 나의 버킷리스트 삭제
	public int checkMyBKLFinished(HashMap<String, Object> map); // Finished 0 or 1 check
	public int updateMyBKLFinished(HashMap<String, Object> map); // mybkListFinished 0이면 1로, 1이면 0으로 업데이트
	
	public ArrayList<MyComBKListVO> mycomBKListView(String memId); // (나의 버킷리스트) 모두의 버킷리스트 목록 보여주기
	public int checkCombklistInMybkl(HashMap<String, Object> map); // (나의 버킷리스트)의 모두의 버킷리스트 목록 중복 체크
	public void insertMyComBKList(MyComBKListVO vo); // (나의 버킷리스트) 모두의 버킷리스트 테이블에 추가
	public void deletemycomBKList(int mycombkListNo); // 나의 버킷리스트 삭제
	public int checkMyComBKLFinished(HashMap<String, Object> map); // Finished 0 or 1 check
	public int updateMyComBKLFinished(HashMap<String, Object> map); // mybkListFinished 0이면 1로, 1이면 0으로 업데이트
	
	public void comBKListInsert(ComBKListVO combklist); // 모두의 버킷리스트 등록
	public ArrayList<ComBKListVO> comBKListViewRec(); // 모두의 버킷리스트 목록 최신순 보여주기
	public ArrayList<ComBKListVO> comBKListViewTitle(); // 모두의 버킷리스트 목록 이름순 보여주기
	public ArrayList<ComBKListVO> comBKListViewCnt(); // 모두의 버킷리스트 목록 조회순 보여주기
	public ComBKListVO detailViewComBKList(int combkListNo); // 모두의 버킷리스트 상세 페이지
	public void deletecomBKList(int combkListNo); // 모두의 버킷리스트 삭제
	public int combkListViewcnt(int combkListNo); // 모두의 버킷리스트 조회수
	
	public ArrayList<ComBKListVO> listRecentComBKList(); // 메인 최신순
	public ArrayList<MyBKListVO> MypagemyBKListView(String memId); // 마이페이지 나의 버킷리스트 목록
}
