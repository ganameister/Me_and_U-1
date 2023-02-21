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
	public RegGatherVO detailViewRegGather(int reggatherNo);  // 정기 모임 상세 페이지 보기
	public void deleteReg(int regGatherNo);	// 정기 모임 삭제
	public ArrayList<RegGatherVO > ctgChange(String ctgNo);    // 카테고리 체인지
    public ArrayList<RegGatherVO > areaChange(String areaNo);    // 지역 체인지
    public ArrayList<RegGatherVO > ctg_areaChange(String ctgNo, String areaNo);    // 둘다변경
    
    public ArrayList<RegGatherVO> listRecentGatherList(); // 메인 페이지 최신순
}
