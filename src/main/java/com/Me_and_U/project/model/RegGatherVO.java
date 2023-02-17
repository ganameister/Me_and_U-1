package com.Me_and_U.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RegGatherVO {
	private int regGatherNo;
	private String regGatherTitle;
	private String regGatherDiscript;
	private String regGatherImg;
	private String regGatherStartDate;
	private String regGatherEndDate;
	private int regGatherMaxNum;	// 모임 최대정원
	private int regGatherNowNum;	// 모임 현재정원
	private int regGatherViewNum;	// 모임 조회수
	
	private String memId;
	private int ctgNo;
	private int areaNo;
	
	// 조인용 데이터
	private String areaName;
	
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public int getAreaNo() {
		return areaNo;
	}
	public void setAreaNo(int areaNo) {
		this.areaNo = areaNo;
	}
	public int getRegGatherNo() {
		return regGatherNo;
	}
	public void setRegGatherNo(int regGatherNo) {
		this.regGatherNo = regGatherNo;
	}
	public String getRegGatherTitle() {
		return regGatherTitle;
	}
	public void setRegGatherTitle(String regGatherTitle) {
		this.regGatherTitle = regGatherTitle;
	}
	public String getRegGatherDiscript() {
		return regGatherDiscript;
	}
	public void setRegGatherDiscript(String regGatherDiscript) {
		this.regGatherDiscript = regGatherDiscript;
	}
	public String getRegGatherImg() {
		return regGatherImg;
	}
	public void setRegGatherImg(String regGatherImg) {
		this.regGatherImg = regGatherImg;
	}
	public String getRegGatherStartDate() {
		return regGatherStartDate;
	}
	public void setRegGatherStartDate(String regGatherStartDate) {
		this.regGatherStartDate = regGatherStartDate;
	}
	public String getRegGatherEndDate() {
		return regGatherEndDate;
	}
	public void setRegGatherEndDate(String regGatherEndDate) {
		this.regGatherEndDate = regGatherEndDate;
	}
	public int getRegGatherMaxNum() {
		return regGatherMaxNum;
	}
	public void setRegGatherMaxNum(int regGatherMaxNum) {
		this.regGatherMaxNum = regGatherMaxNum;
	}
	public int getRegGatherNowNum() {
		return regGatherNowNum;
	}
	public void setRegGatherNowNum(int regGatherNowNum) {
		this.regGatherNowNum = regGatherNowNum;
	}
	public int getRegGatherViewNum() {
		return regGatherViewNum;
	}
	public void setRegGatherViewNum(int regGatherViewNum) {
		this.regGatherViewNum = regGatherViewNum;
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
