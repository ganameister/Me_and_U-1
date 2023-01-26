package com.Me_and_U.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ComBKListVO {
	private int combkListNo;
	private String combkListTitle;
	private String combkListSubtitle;
	private String combkListWrite;
	private String combkListImg;
	private Date combkListDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private int combkListFinished;
	private String memId;
	private int ctgNo;
	private String combkListCtg;
	private int combkListView;
	
	
	public int getCombkListView() {
		return combkListView;
	}
	public void setCombkListView(int combkListView) {
		this.combkListView = combkListView;
	}
	public String getCombkListCtg() {
		return combkListCtg;
	}
	public void setCombkListCtg(String combkListCtg) {
		this.combkListCtg = combkListCtg;
	}
	public int getCombkListNo() {
		return combkListNo;
	}
	public void setCombkListNo(int combkListNo) {
		this.combkListNo = combkListNo;
	}
	public String getCombkListTitle() {
		return combkListTitle;
	}
	public void setCombkListTitle(String combkListTitle) {
		this.combkListTitle = combkListTitle;
	}
	public String getCombkListSubtitle() {
		return combkListSubtitle;
	}
	public void setCombkListSubtitle(String combkListSubtitle) {
		this.combkListSubtitle = combkListSubtitle;
	}
	public String getCombkListWrite() {
		return combkListWrite;
	}
	public void setCombkListWrite(String combkListWrite) {
		this.combkListWrite = combkListWrite;
	}
	public String getCombkListImg() {
		return combkListImg;
	}
	public void setCombkListImg(String combkListImg) {
		this.combkListImg = combkListImg;
	}
	public Date getCombkListDate() {
		return combkListDate;
	}
	public void setCombkListDate(Date combkListDate) {
		this.combkListDate = combkListDate;
	}
	public int getCombkListFinished() {
		return combkListFinished;
	}
	public void setCombkListFinished(int combkListFinished) {
		this.combkListFinished = combkListFinished;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getCtgNo() {
		return ctgNo;
	}
	public void setCtgNo(int ctgNo) {
		this.ctgNo = ctgNo;
	}
}
