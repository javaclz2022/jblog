package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CateDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CateVo;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private BlogDao blogDao;
	
	@Autowired
	private CateDao cateDao;

	
	//아이디체크 : 회원가입시 사용중인 아이디인지 검사
	public boolean idCheck(String id) {
		System.out.println("[UserService.idCheck()]");
		
		boolean isExist;
		UserVo userVo = userDao.selectUser(id);
		if(userVo == null) {
			isExist = false; //존재하니-->아니요: 사용할 수 있음
		} else {
			isExist = true;  //존재하니-->예: 사용할 수 없음
		}
		return isExist;
	}
	
	
	//회원가입: 회원정보, 블로그기본정보, 카테고리기본정보가 저장되어야함*/
	public void join(UserVo userVo) {
		System.out.println("[UserService.join()]");
		
		//회원정보 저장
		userDao.insertUser(userVo); 
		
		
		//블로그 초기값 저장(개설)
		BlogVo blogVo = new BlogVo();
		blogVo.setId(userVo.getId());
		blogVo.setBlogTitle(userVo.getUserName() +"의 블로그입니다.");
		blogVo.setLogoFile("default");
		
		blogDao.insertBlog(blogVo);
		
		
		//카테고리 초기값 저장
		CateVo cateVo = new CateVo();
		cateVo.setId(userVo.getId());
		cateVo.setCateName("미분류");
		cateVo.setDescription("기본으로 만들어지는 카테고리 입니다.");
		
		cateDao.insertCate(cateVo);
	}
	
	//로그인
	public UserVo login(UserVo userVo) {
		System.out.println("[UserService.login()]");
		
		//회원정보 가져오기
		UserVo authUser = userDao.selectUser(userVo);
		return authUser;
	}
}
