package com.javaex.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.CateService;
import com.javaex.vo.CateVo;
import com.javaex.vo.UserVo;

@Controller
public class ApiCateController {

	@Autowired
	private CateService cateService;

	//회원별(블로그별) 카테고리 리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/api/cate/list", method = RequestMethod.POST)
	public List<CateVo> cateList(HttpSession session) {
		System.out.println("[ApiCateController.cateList()]");
		
		//로그인한 사용자의 카테고리 리스트를 가져옴
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		String loginId = authUser.getId();
		List<CateVo> cateList = cateService.getCateList(loginId);
		
		return cateList;
	}

	
	//카테고리 추가
	@ResponseBody
	@RequestMapping(value = "/api/cate/add", method = RequestMethod.POST)
	public CateVo cateAdd(@ModelAttribute CateVo cateVo) {
		System.out.println("[ApiCateController.cateAdd()]");
		
		//카테고리 내용을 저장하고 방금저장한 카테고리 정보 모두를 가져온다
		return cateService.addCate(cateVo);
	}
	
	
	//카테고리 삭제
	@ResponseBody
	@RequestMapping(value = "/api/cate/remove", method = RequestMethod.POST)
	public int cateAdd(@RequestParam("cateNo") int cateNo) {
		System.out.println("[ApiCateController.remove()]");
		
		return cateService.removeCate(cateNo);
	}	
}
