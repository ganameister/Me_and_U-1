package com.Me_and_U.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IMypageDAO;
import com.Me_and_U.project.model.MypageVO;
import com.Me_and_U.project.model.RegGatherVO;

@Service
public class MypageService implements IMypageService {
	@Autowired
	IMypageDAO dao;
	
	@Override
	public int checkRegGatherInMypage(int regGatherNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("regGatherNo", regGatherNo);
		map.put("memId", memId);
		return dao.checkRegGatherInMypage(map);
	}

	@Override
	public void insertRegGatherInMypage(MypageVO vo) {
		dao.insertRegGatherInMypage(vo);
	}
	
	@Override
	public ArrayList<RegGatherVO> myRegGatherView(String memId) {
		return dao.myRegGatherView(memId);
	}

	
	
}
