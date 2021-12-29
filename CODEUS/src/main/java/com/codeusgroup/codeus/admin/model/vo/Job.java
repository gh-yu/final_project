package com.codeusgroup.codeus.admin.model.vo;

public class Job {
	private int jobId;
	private String jobName;
	private int jobOrder;
	private int jobStatus;
	
	public Job() {}

	public Job(int jobId, String jobName, int jobOrder, int jobStatus) {
		super();
		this.jobId = jobId;
		this.jobName = jobName;
		this.jobOrder = jobOrder;
		this.jobStatus = jobStatus;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public int getJobOrder() {
		return jobOrder;
	}

	public void setJobOrder(int jobOrder) {
		this.jobOrder = jobOrder;
	}

	public int getJobStatus() {
		return jobStatus;
	}

	public void setJobStatus(int jobStatus) {
		this.jobStatus = jobStatus;
	}

	@Override
	public String toString() {
		return "Job [jobId=" + jobId + ", jobName=" + jobName + ", jobOrder=" + jobOrder + ", jobStatus=" + jobStatus
				+ "]";
	}

}
