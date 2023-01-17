package com.Me_and_U.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.INoticeDAO;
import com.Me_and_U.project.model.NoticeVO;

@Service
public class NoticeService implements INoticeService {
	@Autowired
	@Qualifier("INoticeDAO")
	INoticeDAO dao;
	
	
	@Override
	public ArrayList<NoticeVO> listAllNotice() {
		return dao.listAllNotice();
	}

	@Override
	public NoticeVO detailViewNotice(int noticeNo) {
		return dao.detailViewNotice(noticeNo);
	}

}
