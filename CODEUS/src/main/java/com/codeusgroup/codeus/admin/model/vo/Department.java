package com.codeusgroup.codeus.admin.model.vo;

import java.sql.Date;

public class Department {
	private int deptId;
	private String deptName;
	private String deptManager;
	private String deptManagerName;
	private	int uppperDept;
	private int deptLevel;
	private int deptOrder;
	private int deptStatus;
	private Date createDate;
	
	public Department() {}

	public Department(int deptId, String deptName, String deptManager, String deptManagerName, int uppperDept,
			int deptLevel, int deptOrder, int deptStatus, Date createDate) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
		this.deptManager = deptManager;
		this.deptManagerName = deptManagerName;
		this.uppperDept = uppperDept;
		this.deptLevel = deptLevel;
		this.deptOrder = deptOrder;
		this.deptStatus = deptStatus;
		this.createDate = createDate;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getDeptManager() {
		return deptManager;
	}

	public void setDeptManager(String deptManager) {
		this.deptManager = deptManager;
	}

	public String getDeptManagerName() {
		return deptManagerName;
	}

	public void setDeptManagerName(String deptManagerName) {
		this.deptManagerName = deptManagerName;
	}

	public int getUppperDept() {
		return uppperDept;
	}

	public void setUppperDept(int uppperDept) {
		this.uppperDept = uppperDept;
	}

	public int getDeptLevel() {
		return deptLevel;
	}

	public void setDeptLevel(int deptLevel) {
		this.deptLevel = deptLevel;
	}

	public int getDeptOrder() {
		return deptOrder;
	}

	public void setDeptOrder(int deptOrder) {
		this.deptOrder = deptOrder;
	}

	public int getDeptStatus() {
		return deptStatus;
	}

	public void setDeptStatus(int deptStatus) {
		this.deptStatus = deptStatus;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Department [deptId=" + deptId + ", deptName=" + deptName + ", deptManager=" + deptManager
				+ ", deptManagerName=" + deptManagerName + ", uppperDept=" + uppperDept + ", deptLevel=" + deptLevel
				+ ", deptOrder=" + deptOrder + ", deptStatus=" + deptStatus + ", createDate=" + createDate + "]";
	}
	
}
