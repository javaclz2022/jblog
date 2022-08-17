package com.javaex.vo;

public class CateVo {

	private int cateNo;
	private String cateName;
	private String description;
	private String regDate;
	private String id;
	private int cnt;

	public CateVo() {
	}

	public CateVo(int cateNo, String cateName, String description, String regDate, String id, int cnt) {
		this.cateNo = cateNo;
		this.cateName = cateName;
		this.description = description;
		this.regDate = regDate;
		this.id = id;
		this.cnt = cnt;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "CateVo [cateNo=" + cateNo + ", cateName=" + cateName + ", description=" + description + ", regDate="
				+ regDate + ", id=" + id + ", cnt=" + cnt + "]";
	}

}
