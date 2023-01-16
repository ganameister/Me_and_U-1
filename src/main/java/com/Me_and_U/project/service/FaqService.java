package com.Me_and_U.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IFaqDAO;
import com.Me_and_U.project.model.FaqVO;

@Service
public class FaqService implements IFaqService {
	@Autowired
	@Qualifier("IFaqDAO")
	IFaqDAO dao;
	
	@Override
	public ArrayList<FaqVO> listAllFaq() {		
		return dao.listAllFaq();
	}

	@Override
	public FaqVO detailViewFaq(int faqNo) {		
		return dao.detailViewFaq(faqNo);
	}

	

}
