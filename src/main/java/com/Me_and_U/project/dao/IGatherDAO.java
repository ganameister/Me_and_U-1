package com.Me_and_U.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;
import com.Me_and_U.project.model.RegGatherVO;


public interface IGatherDAO {
	public void regGatherInsert(RegGatherVO regGather); // 정기 모임 등록
	public ArrayList<RegGatherVO > listAllGather();	// 정기 모임 전체 보기
	public RegGatherVO detailViewRegGather(int reggatherNo);  // 정기 모임 상세 페이지 보기
}
