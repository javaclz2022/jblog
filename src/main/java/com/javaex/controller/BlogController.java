package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BlogService;
import com.javaex.service.CateService;
import com.javaex.service.PostService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CateVo;
import com.javaex.vo.PostVo;
import com.javaex.vo.UserVo;

@Controller
public class BlogController {

	@Autowired
	private BlogService blogService;

	@Autowired
	private CateService cateService;

	@Autowired
	private PostService postService;

	//개인블로그 메인페이지
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String blogMain(@PathVariable("id") String id,
			@RequestParam(value = "crtCateNo", required = false, defaultValue = "0") int crtCateNo,
			@RequestParam(value = "crtPostNo", required = false, defaultValue = "0") int crtPostNo,
			Model model) {
		System.out.println("[BlogController.blogMain()]");
		System.out.println("crtCateNo=" + crtCateNo);
		System.out.println("crtPostNo=" + crtPostNo);
		
		// 방문한 블로그정보
		BlogVo  blogVo= blogService.getBlog(id);
		System.out.println("aaaa" + blogVo);
		
		
		// 카테고리, 포스트리스트, 포스트 정보가져오기
		Map<String, Object> mainMap = blogService.getMain(id, crtCateNo, crtPostNo);
		
		model.addAttribute("blogVo", blogVo);
		model.addAttribute("mainMap", mainMap);
		model.addAttribute("newline", "\n"); // 줄바꾸기용
		
		System.out.println("cont" + mainMap);
		return "blog/blog-main";
	}

	// 개인블로그 기본설정페이지 출력
	@RequestMapping(value = "/{id}/admin/basic", method = RequestMethod.GET)
	public String blogAdminBasic(@PathVariable("id") String id, HttpSession session, Model model) {
		System.out.println("[BlogController.blogAdminBasic()]");
		
		// 로그인한 사용자 아이디(세션에서 가져오기)
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		// 로그인 안했으면 로그인 페이지로
		if (authUser == null) {
			return "redirect:/user/loginForm";
		}

		String loginId = authUser.getId();
		if (id.equals(loginId)) { // 로그인했고 자신의 블로그이면 진행
			// 블로그 기본정보 가져오기
			BlogVo blogVo = blogService.getBlog(loginId);
			model.addAttribute("blogVo", blogVo);
			return "blog/admin/blog-admin-basic";

		} else { // 다른 사람 블로그 설정페이지 접근시
			return "error/403";
		}

	}

	// 개인블로그 기본설정페이지 정보수정하기
	@RequestMapping(value = "/{id}/admin/basicModify", method = RequestMethod.POST)
	public String blogAdminBasicModify(@ModelAttribute BlogVo blogVo, HttpSession session, Model model) {
		System.out.println("[BlogController.blogAdminBasicModify()]");
		
		// 현재 방문한 블로그 주인 ID
		String id = blogVo.getId(); // @PathVariable 의 {id}값도 vo에 자동저장된다.

		// 로그인한 사용자 아이디(세션에서 가져오기)
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		// 로그인 안했으면 로그인 페이지로
		if (authUser == null) {
			return "redirect:/user/loginForm";
		}

		String loginId = authUser.getId();
		if (id.equals(loginId)) { // 로그인했고 자신의 블로그이면 진행
			blogVo.setId(loginId);

			// 기본설정 수정
			blogService.blogAdminBasicModify(blogVo);
			return "redirect:/" + blogVo.getId() + "/admin/basic";

		} else { // 다른 사람 블로그 설정페이지 접근시
			return "error/403";
		}
	}

	// 개인블로그 카테고리설정 페이지 출력
	// 등록 수정은 ajax로 api 컨트롤러 참고
	@RequestMapping(value = "/{id}/admin/cate", method = RequestMethod.GET)
	public String blogAdminCate(@PathVariable("id") String id, HttpSession session, Model model) {
		System.out.println("[BlogController.blogAdminCate()]");
		
		// 로그인한 사용자 아이디(세션에서 가져오기)
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		// 로그인 안했으면 로그인 페이지로
		if (authUser == null) {
			return "redirect:/user/loginForm";
		}

		String loginId = authUser.getId();
		if (id.equals(loginId)) { // 로그인했고 자신의 블로그이면 진행
			// 블로그 기본정보 가져오기
			BlogVo blogVo = blogService.getBlog(id);

			// 카테고리정보 가져오기
			List<CateVo> cateList = cateService.getCateList(loginId);

			model.addAttribute("blogVo", blogVo);
			model.addAttribute("cateList", cateList);
			return "blog/admin/blog-admin-cate";

		} else { // 다른 사람 블로그 설정페이지 접근시
			return "error/403";
		}

	}

	
	// 개인블로그 글쓰기설정페이지 출력
	@RequestMapping(value = "/{id}/admin/writeForm", method = RequestMethod.GET)
	public String blogAdminWrite(@PathVariable("id") String id, HttpSession session, Model model) {
		System.out.println("[BlogController.blogAdminWrite()]");
		
		// 로그인한 사용자 아이디(세션에서 가져오기)
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		// 로그인 안했으면 로그인 페이지로
		if (authUser == null) {
			return "redirect:/user/loginForm";
		}

		String loginId = authUser.getId();
		if (id.equals(loginId)) { // 로그인했고 자신의 블로그이면 진행
			// 블로그 기본정보 가져오기
			BlogVo blogVo = blogService.getBlog(id);

			// 카테고리 정보 가져오기 (셀렉트박스 출력용)
			List<CateVo> cateList = cateService.getCateList(loginId);

			model.addAttribute("blogVo", blogVo);
			model.addAttribute("cateList", cateList);
			return "blog/admin/blog-admin-write";

		} else { // 다른 사람 블로그 설정페이지 접근시
			return "error/403";
		}

	}

	// 개인블로그 글쓰기설정페이지 저장
	@RequestMapping(value = "/{id}/admin/write", method = RequestMethod.POST)
	public String blogAdminWritePost(@PathVariable("id") String id, @ModelAttribute PostVo postVo, HttpSession session,
			Model model) {
		System.out.println("[BlogController.blogAdminWritePost()]");
		
		// 로그인한 사용자 아이디(세션에서 가져오기)
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		// 로그인 안했으면 로그인 페이지로
		if (authUser == null) {
			return "redirect:/user/loginForm";
		}
		
		String loginId = authUser.getId();
		if (id.equals(loginId)) { // 로그인했고 자신의 블로그이면 진행
			// 포스트 글저장
			postService.postWrite(postVo);
			return "redirect:/" + id + "/admin/writeForm";
			
		} else { // 다른 사람 블로그 설정페이지 접근시
			return "error/403";
		}
	}
}
