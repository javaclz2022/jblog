package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PostVo;

@Repository
public class PostDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//포스트 글저장
	public int insertPost(PostVo postVo) {
		System.out.println("[BlogController.postWrite()]");
		
		return sqlSession.insert("post.insertPost" , postVo);
	}
	
	
	//특정 회원의 선택한 카테고리의 포스트 리스트 가져오기 - 블로그 메인에서 사용
	public List<PostVo> selectList(int crtCateNo) {
		System.out.println("[BlogController.selectList()]");
		
		return sqlSession.selectList("post.selectList" , crtCateNo);
	}

	//선택한 포스트 가져오기 - 블로그 메인에서 사용
	public PostVo selectPost(int crtPostNo) {
		System.out.println("[BlogController.selectPost()]");
		
		return sqlSession.selectOne("post.selectPost", crtPostNo);
	}
	
	//카테고리별 포스트 갯수 구하기-->카테고리 삭제시 이용
	public int selectPostCnt(int crtCateNo) {
		System.out.println("[BlogController.selectPostCnt()]");
		
		return sqlSession.selectOne("post.selectPostCnt", crtCateNo);
	}
	
}
