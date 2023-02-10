package com.Me_and_U.project.dao;

import java.util.ArrayList;

import com.Me_and_U.project.model.NoticeVO;


public interface INoticeDAO {
	public ArrayList<NoticeVO> listAllNotice(); 	
	public NoticeVO detailViewNotice(int noticeNo); 
	public void updatenotice(NoticeVO notice); 
	public void deletenotice(int noticeNo); 	
	public void insertnotice(NoticeVO notice);
}

