package com.codeusgroup.codeus.approval.model.vo;

import java.sql.Date;

public class Agreer extends Document{
	private int agreeNum;
	private int agreeState;
	private Date agreeDate;
	private int docNum;
	private String agreerId;
	private String agreerName;
	private String agreerJob;
	
	public Agreer() {}

	public Agreer(int agreeNum, int agreeState, Date agreeDate, int docNum, String agreerId, String agreerName,
			String agreerJob) {
		super();
		this.agreeNum = agreeNum;
		this.agreeState = agreeState;
		this.agreeDate = agreeDate;
		this.docNum = docNum;
		this.agreerId = agreerId;
		this.agreerName = agreerName;
		this.agreerJob = agreerJob;
	}

	public int getAgreeNum() {
		return agreeNum;
	}

	public void setAgreeNum(int agreeNum) {
		this.agreeNum = agreeNum;
	}

	public int getAgreeState() {
		return agreeState;
	}

	public void setAgreeState(int agreeState) {
		this.agreeState = agreeState;
	}

	public Date getAgreeDate() {
		return agreeDate;
	}

	public void setAgreeDate(Date agreeDate) {
		this.agreeDate = agreeDate;
	}

	public int getDocNum() {
		return docNum;
	}

	public void setDocNum(int docNum) {
		this.docNum = docNum;
	}

	public String getAgreerId() {
		return agreerId;
	}

	public void setAgreerId(String agreerId) {
		this.agreerId = agreerId;
	}

	public String getAgreerName() {
		return agreerName;
	}

	public void setAgreerName(String agreerName) {
		this.agreerName = agreerName;
	}

	public String getAgreerJob() {
		return agreerJob;
	}

	public void setAgreerJob(String agreerJob) {
		this.agreerJob = agreerJob;
	}

	@Override
	public String toString() {
		return "Agreer [agreeNum=" + agreeNum + ", agreeState=" + agreeState + ", agreeDate=" + agreeDate + ", docNum="
				+ docNum + ", agreerId=" + agreerId + ", agreerName=" + agreerName + ", agreerJob=" + agreerJob + "]";
	}
	
}
