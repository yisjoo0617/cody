<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<form>
 	<h3>회원검색 </h3>
 	<table border = "1">
	<tr>
 		<td>이미지</td>	
 		<td>생일</td>	
 		<td>아이디</td>	 		
	</tr>
	<!-- 회원 정보 출력 반복 -->
	<c:forEach var="memberLists" items="${memberLists}">
				<tr>
					<td><c:if test="${memberLists.member_photo != null}">
							<img
								src="${pageContext.request.contextPath }/uploadfile/codyphoto/${memberLists.member_photo}"
								width="200">
						</c:if>
						</td>						
					<td>${memberLists.member_birth}</td>
					<td>${memberLists.member_id}</td>									
					
				</tr>
			</c:forEach>
	
	</table>
	
</form>



</body>
</html>