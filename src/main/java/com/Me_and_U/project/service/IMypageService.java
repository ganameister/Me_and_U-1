package com.Me_and_U.project.service;

import java.util.ArrayList;

import com.Me_and_U.project.model.MypageVO;
import com.Me_and_U.project.model.RegGatherVO;

public interface IMypageService {
	public ArrayList<RegGatherVO> myRegGatherView(String memId);
	public int checkRegGatherInMypage(int regGatherNo, String memId);//모임신청 중복확인
	public void insertRegGatherInMypage(MypageVO vo); //마이페이지에 추가
}
