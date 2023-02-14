package com.Me_and_U.project.service;

import java.util.ArrayList;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;
import com.Me_and_U.project.model.RegGatherVO;
import com.Me_and_U.project.model.ReviewVO;

public interface IGatherService {
	public void regGatherInsert(RegGatherVO regGather); // 정기 모임 등록
	public ArrayList<RegGatherVO> listAllGather();	// 정기 모임 리스트 보기
	
}
