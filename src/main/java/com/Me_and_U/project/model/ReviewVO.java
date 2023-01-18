package com.Me_and_U.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReviewVO {
	private int reviewNo;
	private int	reviewHart;
	private String	reviewImg;
	private String	reviewTitle;
	private String	reviewWrite;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date reviewDate;
	private int	reviewCount;
	private String	reviewCtg;
	private int	subctgNo;
	private int	ctgNo;
	private String	memId;
	private String	memImg;
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getReviewHart() {
		return reviewHart;
	}
	public void setReviewHart(int reviewHart) {
		this.reviewHart = reviewHart;
	}
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewWrite() {
		return reviewWrite;
	}
	public void setReviewWrite(String reviewWrite) {
		this.reviewWrite = reviewWrite;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public String getReviewCtg() {
		return reviewCtg;
	}
	public void setReviewCtg(String reviewCtg) {
		this.reviewCtg = reviewCtg;
	}
	public int getSubctgNo() {
		return subctgNo;
	}
	public void setSubctgNo(int subctgNo) {
		this.subctgNo = subctgNo;
	}
	public int getCtgNo() {
		return ctgNo;
	}
	public void setCtgNo(int ctgNo) {
		this.ctgNo = ctgNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemImg() {
		return memImg;
	}
	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}
	
	
	
}
