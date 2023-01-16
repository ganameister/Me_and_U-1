package com.Me_and_U.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FaqVO {
	private int faqNo;
	private String faqTitle;
	private String faqWrite;//글내용
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date faqDate;
    private String memId;
    private String memPw;
    private String memName; //글작성자
	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getFaqWrite() {
		return faqWrite;
	}
	public void setFaqWrite(String faqWrite) {
		this.faqWrite = faqWrite;
	}
	public Date getFaqDate() {
		return faqDate;
	}
	public void setFaqDate(Date faqDate) {
		this.faqDate = faqDate;
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
