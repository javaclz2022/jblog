package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CateDao;
import com.javaex.dao.PostDao;
import com.javaex.vo.CateVo;

@Service
public class CateService {

	@Autowired
	private CateDao cateDao;
	
	@Autowired
	private PostDao postDao;
	
	//회원ID로 가테고리 가져오기
	public List<CateVo> getCateList(String id) {
		System.out.println("[CateService.getCateList()]");
		
		return cateDao.selectCateList(id);
	}

	//카테고리 추가
	public CateVo addCate(CateVo cateVo) {
		System.out.println("[CateService.addCate()]");
		
		//카테고리 내용을 저장하고 방금저장한 카테고리 정보 모두를 가져온다
		cateDao.insertCate(cateVo);
		return cateDao.selectCate(cateVo.getCateNo());
	}
	
	//카테고리 삭제
	public int removeCate(int cateNo) {
		System.out.println("[CateService.removeCate()]");
		
		//카테고리에 글갯수 조회
		int postCnt = postDao.selectPostCnt(cateNo);
		
		if(postCnt==0) { //글이 없으면 삭제
			cateDao.deleteCate(cateNo);
		}
		
		//글갯수 리턴
		return postCnt;
	}
}
