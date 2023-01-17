package com.Me_and_U.project.service;

import java.util.ArrayList;

import com.Me_and_U.project.model.FaqVO;
import com.Me_and_U.project.model.NoticeVO;
import com.Me_and_U.project.model.QnaVO;

public interface INoticeService {
	public ArrayList<NoticeVO> listAllNotice(); 	
	public NoticeVO detailViewNotice(int noticeNo); 
}