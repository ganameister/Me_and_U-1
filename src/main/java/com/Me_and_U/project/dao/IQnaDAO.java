package com.Me_and_U.project.dao;

import java.util.ArrayList;

import com.Me_and_U.project.model.QnaVO;

public interface IQnaDAO {
	public ArrayList<QnaVO> listAllQna(); 	
	public void updateQna(QnaVO qna); 
	public void deleteQna(String qnaNo); 	
	public QnaVO detailViewQna(String qnaNo); 
}

