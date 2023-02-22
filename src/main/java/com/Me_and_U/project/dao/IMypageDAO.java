package com.Me_and_U.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.Me_and_U.project.model.MypageVO;
import com.Me_and_U.project.model.RegGatherVO;



public interface IMypageDAO {
	public ArrayList<RegGatherVO> myRegGatherView(String memId);
	public int checkRegGatherInMypage(HashMap<String, Object> map);//모임신청 중복확인
	public void insertRegGatherInMypage(MypageVO vo); // 마이페이지에 추가
	
}
