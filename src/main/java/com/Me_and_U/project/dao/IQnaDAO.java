package com.Me_and_U.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.Me_and_U.project.model.MemberVO;
import com.Me_and_U.project.model.QnaVO;



public interface IQnaDAO {
	public ArrayList<QnaVO> listAllQna(); 	
	public void updateQna(QnaVO qna); //수정
	public void deleteQna(int qnaNo); 	//삭제
	public QnaVO detailViewQna(int qnaNo); //상세페이지
	public void insertQna(QnaVO qna); //등록
	public MemberVO getMemberInfo(String memId); // 수정 삭제시 회원정보 알아오기
	//public int updateQna(HashMap<String, Object> map);  //수정 ???
	
}

