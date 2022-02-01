package com.codeusgroup.codeus.approval.model.vo;

import java.sql.Date;

public class Document {
	private int docNum;
	private String docTitle;
	private String docContent;
	private Date docCreateDate;
	private Date docUpdateDate;
	private String docDeleteYn;
	private int docApprovalStatus;
	private Date docApprovalDate;
	private Date docStartDate;
	private Date docEndDate;
	private String drafterId;
	private String drafterName;
	private String drafterJob;
	private String approverId;
	private String approverName;
	private String approverJob;
	private int formNum;
	private int formName;
	
	public Document() {}

	public Document(int docNum, String docTitle, String docContent, Date docCreateDate, Date docUpdateDate,
			String docDeleteYn, int docApprovalStatus, Date docApprovalDate, Date docStartDate, Date docEndDate,
			String drafterId, String drafterName, String drafterJob, String approverId, String approverName,
			String approverJob, int formNum, int formName) {
		super();
		this.docNum = docNum;
		this.docTitle = docTitle;
		this.docContent = docContent;
		this.docCreateDate = docCreateDate;
		this.docUpdateDate = docUpdateDate;
		this.docDeleteYn = docDeleteYn;
		this.docApprovalStatus = docApprovalStatus;
		this.docApprovalDate = docApprovalDate;
		this.docStartDate = docStartDate;
		this.docEndDate = docEndDate;
		this.drafterId = drafterId;
		this.drafterName = drafterName;
		this.drafterJob = drafterJob;
		this.approverId = approverId;
		this.approverName = approverName;
		this.approverJob = approverJob;
		this.formNum = formNum;
		this.formName = formName;
	}

	public int getDocNum() {
		return docNum;
	}

	public void setDocNum(int docNum) {
		this.docNum = docNum;
	}

	public String getDocTitle() {
		return docTitle;
	}

	public void setDocTitle(String docTitle) {
		this.docTitle = docTitle;
	}

	public String getDocContent() {
		return docContent;
	}

	public void setDocContent(String docContent) {
		this.docContent = docContent;
	}

	public Date getDocCreateDate() {
		return docCreateDate;
	}

	public void setDocCreateDate(Date docCreateDate) {
		this.docCreateDate = docCreateDate;
	}

	public Date getDocUpdateDate() {
		return docUpdateDate;
	}

	public void setDocUpdateDate(Date docUpdateDate) {
		this.docUpdateDate = docUpdateDate;
	}

	public String getDocDeleteYn() {
		return docDeleteYn;
	}

	public void setDocDeleteYn(String docDeleteYn) {
		this.docDeleteYn = docDeleteYn;
	}

	public int getDocApprovalStatus() {
		return docApprovalStatus;
	}

	public void setDocApprovalStatus(int docApprovalStatus) {
		this.docApprovalStatus = docApprovalStatus;
	}

	public Date getDocApprovalDate() {
		return docApprovalDate;
	}

	public void setDocApprovalDate(Date docApprovalDate) {
		this.docApprovalDate = docApprovalDate;
	}

	public Date getDocStartDate() {
		return docStartDate;
	}

	public void setDocStartDate(Date docStartDate) {
		this.docStartDate = docStartDate;
	}

	public Date getDocEndDate() {
		return docEndDate;
	}

	public void setDocEndDate(Date docEndDate) {
		this.docEndDate = docEndDate;
	}

	public String getDrafterId() {
		return drafterId;
	}

	public void setDrafterId(String drafterId) {
		this.drafterId = drafterId;
	}

	public String getDrafterName() {
		return drafterName;
	}

	public void setDrafterName(String drafterName) {
		this.drafterName = drafterName;
	}

	public String getDrafterJob() {
		return drafterJob;
	}

	public void setDrafterJob(String drafterJob) {
		this.drafterJob = drafterJob;
	}

	public String getApproverId() {
		return approverId;
	}

	public void setApproverId(String approverId) {
		this.approverId = approverId;
	}

	public String getApproverName() {
		return approverName;
	}

	public void setApproverName(String approverName) {
		this.approverName = approverName;
	}

	public String getApproverJob() {
		return approverJob;
	}

	public void setApproverJob(String approverJob) {
		this.approverJob = approverJob;
	}

	public int getFormNum() {
		return formNum;
	}

	public void setFormNum(int formNum) {
		this.formNum = formNum;
	}
	
	public int getFormName() {
		return formName;
	}

	public void setFormName(int formName) {
		this.formName = formName;
	}

	@Override
	public String toString() {
		return "Document [docNum=" + docNum + ", docTitle=" + docTitle + ", docContent=" + docContent
				+ ", docCreateDate=" + docCreateDate + ", docUpdateDate=" + docUpdateDate + ", docDeleteYn="
				+ docDeleteYn + ", docApprovalStatus=" + docApprovalStatus + ", docApprovalDate=" + docApprovalDate
				+ ", docStartDate=" + docStartDate + ", docEndDate=" + docEndDate + ", drafterId=" + drafterId
				+ ", drafterName=" + drafterName + ", drafterJob=" + drafterJob + ", approverId=" + approverId
				+ ", approverName=" + approverName + ", approverJob=" + approverJob + ", formNum=" + formNum + ", formName=" + formName +"]";
	}

}
