<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
</head>

<body>
	<div id="wrap">

		<!-- 개인블로그 해더 -->
		<c:import url="/WEB-INF/views/includes/blog-header.jsp"></c:import>
		
		<div id="content" class="clearfix">
			<div id="profilecate_area">
				<div id="profile">
					<c:if test="${blogVo.logoFile == 'default'}">
						<img id="proImg" src="${pageContext.request.contextPath}/assets/images/spring-logo.jpg">
					</c:if>
					<c:if test="${blogVo.logoFile != 'default'}">
						<img id="proImg" src="${pageContext.request.contextPath}/upload/${blogVo.logoFile}">
					</c:if>
					<div id="nick">${blogVo.userName}(${blogVo.id})님</div>
				</div>
				<div id="cate">
					<div class="text-left">
						<strong>카테고리</strong>
					</div>
					<ul id="cateList" class="text-left">
						<c:forEach items="${mainMap.cateList}" var="cateVo">
							<li><a href="${pageContext.request.contextPath}/${blogVo.id}?crtCateNo=${cateVo.cateNo}">${cateVo.cateName}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!-- profilecate_area -->
			
			<div id="post_area">
				<c:if test="${not empty mainMap.postVo}">
					<div id="postBox" class="clearfix">
							<div id="postTitle" class="text-left"><strong>${mainMap.postVo.postTitle}</strong></div>
							<div id="postDate" class="text-left"><strong>${mainMap.postVo.regDate}</strong></div>
							<div id="postNick">${mainMap.postVo.userName}(${mainMap.postVo.id})님</div>
					</div>
					<!-- //postBox -->
				
					<div id="post" >
						${fn:replace(mainMap.postVo.postContent, newline, "<br>") }
					</div>
					<!-- //post -->
				</c:if>
				
				<c:if test="${empty mainMap.postVo}">
					<div id="postBox" class="clearfix">
							<div id="postTitle" class="text-left"><strong>등록된 글이 없습니다.</strong></div>
							<div id="postDate" class="text-left"><strong></strong></div>
							<div id="postNick"></div>
					</div>
					<!-- //postBox -->
				
					<div id="post" >
					</div>
					<!-- //post -->
				</c:if>
				
				<div id="list">
					<div id="listTitle" class="text-left"><strong>카테고리의 글</strong></div>
					<table>
						<colgroup>
							<col style="">
							<col style="width: 20%;">
						</colgroup>
						<c:forEach items="${mainMap.postList}" var="postVo">
							<tr>
								<td class="text-left"><a href="${pageContext.request.contextPath}/${blogVo.id}?crtCateNo=${postVo.cateNo}&crtPostNo=${postVo.postNo}">${postVo.postTitle}</a></td>
								<td class="text-right">${postVo.regDate}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!-- //list -->
			</div>
			<!-- //post_area -->
			
			
			
		</div>	
		<!-- //content -->
		<div class=></div>
		<c:import url="/WEB-INF/views/includes/blog-footer.jsp"></c:import>
		
	
	
	</div>
	<!-- //wrap -->
</body>
</html>