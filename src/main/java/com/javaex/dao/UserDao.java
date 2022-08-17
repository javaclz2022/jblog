package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	//아이디로 회원정보 가져오기: 아이디체크
	public UserVo selectUser(String id) {
		System.out.println("[UserDao.selectUser()]");
		
		return sqlSession.selectOne("user.selectUserById", id);
	}
	
	//회원정보 저장: 회원가입시
	public int insertUser(UserVo userVo) {
		System.out.println("[UserDao.insertUser()]");
		
		return sqlSession.insert("user.insertUser", userVo); 
	}
	
	//로그인
	public UserVo selectUser(UserVo userVo) {
		System.out.println("[UserDao.selectUser()]");
		
		return sqlSession.selectOne("user.selectUserForLogin", userVo);
	}

}
