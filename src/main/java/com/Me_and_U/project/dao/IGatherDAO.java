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
	public ArrayList<RegGatherVO > ctgChange(String ctgNo);    // 카테고리 체인지
    public ArrayList<RegGatherVO > areaChange(String areaNo);    // 지역 체인지
    public ArrayList<RegGatherVO > ctg_areaChange(String ctgNo, String areaNo);    // 둘다변경
	public void deleteReg(int regGatherNo);	// 정기 모임 삭제
}
