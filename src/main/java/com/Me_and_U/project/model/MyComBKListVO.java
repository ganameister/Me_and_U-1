package com.Me_and_U.project.model;

public class MyComBKListVO {
	private int mycombkListNo;
	private String memId;
	private int combkListNo;
	private int mycombkListFinished;
	
	//조인용 데이터
	private String combkListSubtitle;
	
	public String getCombkListSubtitle() {
		return combkListSubtitle;
	}
	public void setCombkListSubtitle(String combkListSubtitle) {
		this.combkListSubtitle = combkListSubtitle;
	}
	public int getMycombkListFinished() {
		return mycombkListFinished;
	}
	public void setMycombkListFinished(int mycombkListFinished) {
		this.mycombkListFinished = mycombkListFinished;
	}
	public int getMycombkListNo() {
		return mycombkListNo;
	}
	public void setMycombkListNo(int mycombkListNo) {
		this.mycombkListNo = mycombkListNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getCombkListNo() {
		return combkListNo;
	}
	public void setCombkListNo(int combkListNo) {
		this.combkListNo = combkListNo;
	}
}
