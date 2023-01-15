package com.Me_and_U.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IQnaDAO;
import com.Me_and_U.project.model.QnaVO;
@Service
public class QnaService implements IQnaService {
	@Autowired
	@Qualifier("IQnaDAO")
	IQnaDAO dao;
	
	
	@Override
	public ArrayList<QnaVO> listAllQna() {
		return dao.listAllQna();
	}

	@Override
	public void updateQna(QnaVO qna) {
		dao.updateQna(qna);
	}

	@Override
	public void deleteQna(int qnaNo) {
		dao.deleteQna(qnaNo);
	}

	@Override
	public QnaVO detailViewQna(int qnaNo) {
		return dao.detailViewQna(qnaNo);
	}

}
