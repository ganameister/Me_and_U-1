package com.Me_and_U.project.service;

import java.util.ArrayList;

import com.Me_and_U.project.model.QnaVO;

public interface IQnaService {
	public ArrayList<QnaVO> listAllQna(); 	
	public void updateQna(QnaVO qna); 
	public void deleteQna(int qnaNo); 	
	public QnaVO detailViewQna(int qnaNo);
	public void insertQna(QnaVO qna); 
}