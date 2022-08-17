package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CateDao;
import com.javaex.dao.PostDao;
import com.javaex.util.FileUtil;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CateVo;
import com.javaex.vo.FileVo;
import com.javaex.vo.PostVo;

@Service
public class BlogService {

	@Autowired
	private BlogDao blogDao;

	@Autowired
	private CateDao cateDao;

	@Autowired
	private PostDao postDao;

	// 블로그정보가져오기
	public BlogVo getBlog(String id) {
		System.out.println("[BlogService.getBlog()]");
		
		return blogDao.selectBlog(id);
	}

	// 블로그 기본설정페이지 수정
	public int blogAdminBasicModify(BlogVo blogVo) {
		System.out.println("[BlogService.blogAdminBasicModify()]");
		
		MultipartFile file = blogVo.getFile();

		// 첨부파일이 있으면 첨부파일 관련 정보 추출
		if (!file.isEmpty()) {
			FileUtil fileUtil = new FileUtil();
			FileVo fileVo = fileUtil.fileUpload(file); // 파일을 서버의 하드디스트에 복사하고 관련정보를 리턴한다.

			// 수정될 개인블로그logo파일 정보를 blogVo에 저장
			blogVo.setLogoFile(fileVo.getSaveName());
		}

		// 블로그 기본설정내용 수정
		return blogDao.updateBlog(blogVo);
	}

	// 블로그 메인페이지 정보 가져오기
	public Map<String, Object> getMain(String id, int crtCateNo, int crtPostNo) {
		System.out.println("[BlogService.getMain()]");
		
		Map<String, Object> mainMap = new HashMap<String, Object>();
		List<CateVo> cateList;
		List<PostVo> postList;
		PostVo postVo = null;

		//방문한 블로그의 카테고리 리스트 가져오기: 왼쪽하단
		cateList = cateDao.selectCateList(id);
		
		//로딩일때 리스트의 첫번째 카테고리 번호 구하기
		if (crtCateNo == 0 && cateList.size() !=0) {
			crtCateNo = cateList.get(0).getCateNo();
		}
		
		//포스트리스트 가져오기
		postList = postDao.selectList(crtCateNo);
		
		if (crtPostNo == 0 && postList.size() !=0) {
			// 최상단 글 번호 가져옴
			crtPostNo = postList.get(0).getPostNo();
			postVo = postDao.selectPost(crtPostNo);
		}
		
		postList = postDao.selectList(crtCateNo);
		postVo = postDao.selectPost(crtPostNo);
		
		
		mainMap.put("cateList", cateList);
		mainMap.put("postList", postList);
		mainMap.put("postVo", postVo);
		return mainMap;
		
	}

}
