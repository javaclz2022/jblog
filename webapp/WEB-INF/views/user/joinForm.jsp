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
	<div id="center-content">
		
		<!-- 메인 해더 -->
		<c:import url="/WEB-INF/views/includes/main-header.jsp"></c:import>

		<div>		
			<form id="joinForm" method="post" action="${pageContext.request.contextPath}/user/join">
				<table>
			      	<colgroup>
						<col style="width: 100px;">
						<col style="width: 170px;">
						<col style="">
					</colgroup>
		      		<tr>
		      			<td><label for="txtId">아이디</label></td>
		      			<td><input id="txtId" type="text" name="id"></td>
		      			<td><button id="btnIdCheck" type="button">아이디체크</button></td>
		      		</tr>
		      		<tr>
		      			<td></td>
		      			<td id="tdMsg" colspan="2"></td>
		      		</tr> 
		      		<tr>
		      			<td><label for="txtPassword">패스워드</label> </td>
		      			<td><input id="txtPassword" type="password" name="password"  value=""></td>   
		      			<td></td>  			
		      		</tr> 
		      		<tr>
		      			<td><label for="txtUserName">이름</label> </td>
		      			<td><input id="txtUserName" type="text" name="userName"  value=""></td>   
		      			<td></td>  			
		      		</tr>  
		      		<tr>
		      			<td><span>약관동의</span> </td>
		      			<td colspan="3">
		      				<input id="chkAgree" type="checkbox" name="agree" value="y">
		      				<label for="chkAgree">서비스 약관에 동의합니다.</label>
		      			</td>   
		      		</tr>   		
		      	</table>
	      		<div id="btnArea">
					<button id="btnJoin" class="btn" type="submit" >회원가입</button>
				</div>
	      		
			</form>
			
		</div>
	</div>

</body>


<script type="text/javascript">
//id체크여부 값 저장
var isIdCheck = false;

// 아이디체크 
$("#btnIdCheck").on("click", function(){
 	var id = $("#txtId").val();
 	$.ajax({
		url : "${pageContext.request.contextPath }/api/user/idcheck",		
		type : "post",
		data : {id: id},
		dataType : "json",
		success : function(isExist) {
			if(isExist == false){
				$("#tdMsg").text("사용할 수 있는 아이디 입니다.")
				isIdCheck = true; //id중복 체크완료-->사용할수 있음
			}else {
				$("#tdMsg").text("다른 아이디로 가입해 주세요.")
				isIdCheck = false; //id중복 체크완료-->사용할수 없음-->체크안한것으로 처리
			}
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});

$("#joinForm").on("submit", function(){
	
	//아이디 null 체크
	var id = $("#txtId").val();
	if(id == '' || id == null){
		alert("아이디를 입력해 주세요");
		return false;
	}
	
	//아이디 중복 체크
	if(isIdCheck == false){
		alert("아이디 중복체크를 해주세요");
		return false;
	}
	
	//패스워드 null 체크
	var password = $("#txtPassword").val();
	console.log(password);
	if(password == '' || password == null){
		alert("패스워드를 입력해주세요");
		return false;
	}
	
	//이름 null 체크
	var userName = $("#txtUserName").val();
	console.log(userName);
	if(userName == '' || userName == null){
		alert("이름을 입력해주세요");
		return false;
	}
	
	//약관동의
	var agree = $("#chkAgree").is(":checked");
	console.log(agree);
	if(agree == false){
		alert("약관에 동의해 주세요");
		return false;	
	}
	

	//모든 if문을 만족하면 submit 진행
	return true;
	
	
});



</script>
</html>