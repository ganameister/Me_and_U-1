package com.Me_and_U.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IGatherDAO;
import com.Me_and_U.project.model.RegGatherVO;

@Service
public class GatherService implements IGatherService {
	@Autowired
	IGatherDAO dao;

	@Override
	public void regGatherInsert(RegGatherVO regGather) {	// 정기모임 등록
		dao.regGatherInsert(regGather);
	}

	@Override
	public ArrayList<RegGatherVO> listAllGather() {
		return dao.listAllGather();
	}

}
