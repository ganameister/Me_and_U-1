package com.Me_and_U.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.Me_and_U.project.model.MyBKListVO;


public interface IBKListDAO {
	public void insertmybkList(HashMap<String, Object> map); //나의 버킷리스트 등록
	public ArrayList<MyBKListVO> myBKListView(String memId); // 나의 버킷리스트 목록 보여주기
	public void deleteBKList(String mybkListNo); // 나의 버킷리스트 삭제
	public int checkMyBKLFinished(HashMap<String, Object> map); // Finished 0 or 1 check
	public int updateMyBKLFinished(HashMap<String, Object> map);
}
