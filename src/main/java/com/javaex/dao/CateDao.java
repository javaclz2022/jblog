package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CateVo;

@Repository
public class CateDao {

	@Autowired
	private SqlSession sqlSession;
	
	//카테고리 기본값 저장 :회원가입시, 카테고리 추가시
	public int insertCate(CateVo cateVo) {
		System.out.println("[CateDao.insertCate()]");
		
		return sqlSession.insert("cate.insertCate", cateVo);  //select key 사용으로 cateVo에 cateNo 값이 추가됨
	}
	
	
	//회원번호로 카테고리리스트 가져오기
	public List<CateVo> selectCateList(String id){
		System.out.println("[CateDao.selectCateList()]");
		
		return sqlSession.selectList("cate.selectCateList", id );
	}
	
	
	//특정카테고리 정보를 가져온다
	public CateVo selectCate(int cateNo){
		System.out.println("[CateDao.selectCate()]");
		
		return sqlSession.selectOne("cate.selectCate", cateNo );
	}
	
	//카테고리삭제
	public int deleteCate(int cateNo){
		System.out.println("[CateDao.deleteCate()]");
		
		return sqlSession.delete("cate.deleteCate", cateNo );
	}
	

}
