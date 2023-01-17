package com.Me_and_U.project.dao;

import java.util.ArrayList;

import com.Me_and_U.project.model.NoticeVO;


public interface INoticeDAO {
	public ArrayList<NoticeVO> listAllNotice(); 	
	public NoticeVO detailViewNotice(int noticeNo); 
	
}

