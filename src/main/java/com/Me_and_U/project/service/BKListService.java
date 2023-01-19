package com.Me_and_U.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IBKListDAO;
import com.Me_and_U.project.model.MyBKListVO;

@Service
public class BKListService implements IBKListService {
	@Autowired
	@Qualifier("IBKListDAO")
	IBKListDAO dao;
	
	@Override
	public void insertmybkList(String memId, String mybkListWrite) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("mybkListWrite", mybkListWrite);

		dao.insertmybkList(map);
	}

	@Override
	public ArrayList<MyBKListVO> myBKListView(String memId) {
		return dao.myBKListView(memId);
	}

	@Override
	public void deletemyBKList(String mybkListNo) {
		dao.deleteBKList(mybkListNo);
	}

	@Override
	public int checkMyBKLFinished(int mybkListNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mybkListNo", mybkListNo);
		map.put("memId", memId);
		
		return dao.checkMyBKLFinished(map);
	}

	
	 @Override public void updateMyBKLFinished(int mybkListNo, String memId) {
	 HashMap<String, Object> map = new HashMap<String, Object>();
	 map.put("mybkListNo", mybkListNo); 
	 map.put("memId", memId);
	 
	 dao.updateMyBKLFinished(map); }
	 

}
