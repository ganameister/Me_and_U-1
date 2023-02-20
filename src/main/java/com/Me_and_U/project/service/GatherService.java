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

	@Override
	public RegGatherVO detailViewRegGather(int reggatherNo) {
		return dao.detailViewRegGather(reggatherNo);
	}

	@Override
	public void deleteReg(int regGatherNo) {
		dao.deleteReg(regGatherNo);
	}
	
	@Override
    public ArrayList<RegGatherVO> ctgChange(String ctgNo) {
        // TODO Auto-generated method stub
        return dao.ctgChange(ctgNo);
    }

    @Override
    public ArrayList<RegGatherVO> areaChange(String areaNo) {
        // TODO Auto-generated method stub
        return dao.areaChange(areaNo);
    }

    @Override
    public ArrayList<RegGatherVO> ctg_areaChange(String ctgNo, String areaNo) {
        // TODO Auto-generated method stub
        return dao.ctg_areaChange(ctgNo, areaNo);
    }

}
