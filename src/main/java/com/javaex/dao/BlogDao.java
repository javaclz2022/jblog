package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;

@Repository
public class BlogDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//블로그 기본값 저장: 회원가입시
	public int insertBlog(BlogVo blogVo) {
		System.out.println("[BlogDao.insertBlog()]");
		
		return sqlSession.insert("blog.insertBlog", blogVo);
	}
	
	//블로그정보가져오기
	public BlogVo selectBlog(String id) {
		System.out.println("[BlogDao.selectBlog()]");
		
		return sqlSession.selectOne("blog.selectBlogById", id);
	}
	
	//블로그 기본설정페이지 수정
	public int updateBlog(BlogVo blogVo) {
		System.out.println("[BlogDao.updateBlog()]");
		
		return sqlSession.update("blog.updateBlog", blogVo);
	}
}
