package com.Me_and_U.project.dao;

import java.util.ArrayList;

import com.Me_and_U.project.model.QnaVO;


public interface IQnaDAO {
	public ArrayList<QnaVO> listAllQna(); 	
	public void updateQna(QnaVO qna); //수정
	public void deleteQna(int qnaNo); 	//삭제
	public QnaVO detailViewQna(int qnaNo); //상세페이지
	public void insertQna(QnaVO qna); //등록
}

