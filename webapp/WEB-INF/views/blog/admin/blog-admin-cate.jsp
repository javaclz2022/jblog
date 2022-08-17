<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

		<div id="content">
			<ul id="admin-menu" class="clearfix">
				<li class="tabbtn"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic">기본설정</a></li>
				<li class="tabbtn selected"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/cate">카테고리</a></li>
				<li class="tabbtn"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/writeForm">글작성</a></li>
			</ul>
			<!-- //admin-menu -->
			
			<div id="admin-content">
			
				<table id="admin-cate-list">
					<colgroup>
						<col style="width: 50px;">
						<col style="width: 200px;">
						<col style="width: 100px;">
						<col>
						<col style="width: 50px;">
					</colgroup>
		      		<thead>
			      		<tr>
			      			<th>번호</th>
			      			<th>카테고리명</th>
			      			<th>포스트 수</th>
			      			<th>설명</th>
			      			<th>삭제</th>      			
			      		</tr>
		      		</thead>
		      		<tbody id="cateList">
		      		
					</tbody>
				</table>
      	
		      	<table id="admin-cate-add" >
		      		<colgroup>
						<col style="width: 100px;">
						<col style="">
					</colgroup>
		      		<tr>
		      			<td class="t">카테고리명</td>
		      			<td><input type="text" name="name" value=""></td>
		      		</tr>
		      		<tr>
		      			<td class="t">설명</td>
		      			<td><input type="text" name="desc"></td>
		      		</tr>
		      	</table> 
			
				<div id="btnArea">
		      		<button id="btnAddCate" class="btn_l" type="submit" >카테고리추가</button>
		      	</div>
			
			</div>
			<!-- //admin-content -->
		</div>	
		<!-- //content -->
		<c:import url="/WEB-INF/views/includes/blog-footer.jsp"></c:import>
		
	
	
	</div>
	<!-- //wrap -->
</body>


<script type="text/javascript">

$(document).ready(function() {
	fetchList();
});


//카테고리 등록
$("#btnAddCate").on("click", function(){
	var cateName = $("[name=name]").val();
	var description = $("[name=desc]").val();
	var id = "${blogVo.id}";
	console.log(cateName);
	console.log(description);
	console.log(id);
	
	var cateVo = {cateName: cateName,
			  	  description: description,
			  	  id: id } ;
	$.ajax({
		url : "${pageContext.request.contextPath }/api/cate/add",		
		type : "post",
		data : cateVo,
		dataType : "json",
		success : function(cateVo) {
			console.log(cateVo);
			render(cateVo, "up");
			$("[name=name]").val("");
			$("[name=desc]").val("");
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});

//카테고리 삭제
$("#cateList").on("click", ".btnCateDel", function(){
	var $this = $(this)
	var cateNo = $this.data("cateno");

	$.ajax({
		url : "${pageContext.request.contextPath }/api/cate/remove",		
		type : "post",
		data : {cateNo: cateNo},
		dataType : "text",
		success : function(postCnt) {
			if(postCnt == 0){
				$this.parents("tr").remove();
			}else {
				alert("삭제할 수 업습니다." + postCnt);
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});


//카테고리 리스트 요청
function fetchList() {
	
	$.ajax({
		url : "${pageContext.request.contextPath }/api/cate/list",		
		type : "post",
		dataType : "json",
		success : function(cateList) {
			console.log(cateList)
			for(var i=0; i<cateList.length; i++){
				render(cateList[i], "down");
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
}


/* 게시물을 화면에 표현합니다. */
function render(cateVo, updown) {
	
	var str = "" +
			"<tr>"+
				"<td>" + cateVo.cateNo + "</td>" +
				"<td>" + cateVo.cateName + "</td>" +
				"<td>" + cateVo.cnt + "</td>" +
				"<td>" + cateVo.description + "</td>" +
				"<td class='text-center'><img class='btnCateDel' data-cateno='" + cateVo.cateNo + "'  data-cnt='" + cateVo.cnt + "'  src='${pageContext.request.contextPath}/assets/images/delete.jpg'></td>" +
			"</tr>"
	
	if(updown == "up"){
		$("#cateList").prepend(str); 
	}else if(updown == "down"){
		$("#cateList").append(str); 
	}else{
		console.log("updown 오류")
	}
}




</script>



</html>