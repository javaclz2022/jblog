package com.javaex.vo;

public class PostVo {

	private int userNo;
	private String id;
	private String userName;
	
	private int cateNo;
	private String cateName;
	
	private int postNo;
	private String postTitle;
    private String postContent;
    private String regDate;

    public PostVo() {
	}

	public PostVo(int userNo, String id, String userName, int cateNo, String cateName, int postNo, String postTitle,
			String postContent, String regDate) {
		this.userNo = userNo;
		this.id = id;
		this.userName = userName;
		this.cateNo = cateNo;
		this.cateName = cateName;
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.regDate = regDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "PostVo [userNo=" + userNo + ", id=" + id + ", userName=" + userName + ", cateNo=" + cateNo
				+ ", cateName=" + cateName + ", postNo=" + postNo + ", postTitle=" + postTitle + ", postContent="
				+ postContent + ", regDate=" + regDate + "]";
	}


}
