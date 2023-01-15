package com.Me_and_U.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class QnaVO {
	private int qnaNo;
	private String qnaTitle;
	private String qnaWrite;//글내용
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date qnaDate;
    private String memId;
    private String memPw;
    private String memName; //글작성자
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaWrite() {
		return qnaWrite;
	}
	public void setQnaWrite(String qnaWrite) {
		this.qnaWrite = qnaWrite;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
    
}
