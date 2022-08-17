package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class BlogVo {

	private String id;
	private String blogTitle;
	private String logoFile;
	private int userNo;
	private String userName;
	
	private MultipartFile file;

	public BlogVo() {
	}

	public BlogVo(String id, String blogTitle, String logoFile, int userNo, String userName, MultipartFile file) {
		this.id = id;
		this.blogTitle = blogTitle;
		this.logoFile = logoFile;
		this.userNo = userNo;
		this.userName = userName;
		this.file = file;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getLogoFile() {
		return logoFile;
	}

	public void setLogoFile(String logoFile) {
		this.logoFile = logoFile;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "BlogVo [id=" + id + ", blogTitle=" + blogTitle + ", logoFile=" + logoFile + ", userNo=" + userNo
				+ ", userName=" + userName + ", file=" + file + "]";
	}

	

}
