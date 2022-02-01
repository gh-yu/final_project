package com.codeusgroup.codeus.approval.model.vo;

import java.sql.Date;

public class Referrer extends Document{
	private int refNum;
	private int refStatus;
	private Date refDate;
	private int docNum;
	private String referrerId;
	private String referrerName;
	private String referrerJob;
	
	public Referrer() {}

	public Referrer(int refNum, int refStatus, Date refDate, int docNum, String referrerId, String referrerName,
			String referrerJob) {
		super();
		this.refNum = refNum;
		this.refStatus = refStatus;
		this.refDate = refDate;
		this.docNum = docNum;
		this.referrerId = referrerId;
		this.referrerName = referrerName;
		this.referrerJob = referrerJob;
	}

	public int getRefNum() {
		return refNum;
	}

	public void setRefNum(int refNum) {
		this.refNum = refNum;
	}

	public int getRefStatus() {
		return refStatus;
	}

	public void setRefStatus(int refStatus) {
		this.refStatus = refStatus;
	}

	public Date getRefDate() {
		return refDate;
	}

	public void setRefDate(Date refDate) {
		this.refDate = refDate;
	}

	public int getDocNum() {
		return docNum;
	}

	public void setDocNum(int docNum) {
		this.docNum = docNum;
	}

	public String getReferrerId() {
		return referrerId;
	}

	public void setReferrerId(String referrerId) {
		this.referrerId = referrerId;
	}

	public String getReferrerName() {
		return referrerName;
	}

	public void setReferrerName(String referrerName) {
		this.referrerName = referrerName;
	}

	public String getReferrerJob() {
		return referrerJob;
	}

	public void setReferrerJob(String referrerJob) {
		this.referrerJob = referrerJob;
	}

	@Override
	public String toString() {
		return "Referrer [refNum=" + refNum + ", refStatus=" + refStatus + ", refDate=" + refDate + ", docNum=" + docNum
				+ ", referrerId=" + referrerId + ", referrerName=" + referrerName + ", referrerJob=" + referrerJob
				+ "]";
	}
	
}
