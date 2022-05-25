<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Student List</title>
	<!-- <link rel="stylesheet" href="../resources/member.css" type="text/css"></link> -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" flush="false"></jsp:include>
	<div align=center>
		<header style ="font-size: 30px; text-align:center;">스터디 목록</header><br>
		<c:url value="/register" var="url" /><a class="btn btn-outline-dark" style ="float: right; margin-right: 20px" href="${url}">스터디 생성</a><br><br>
		<table class="table table-striped">
		  <tr>
		    <th style="width: 20%; text-align:center;">이름</th>
		    <th style="width: 30%; text-align:center;">목표</th>
		    <th style="width: 10%; text-align:center;">방장</th>
		    <th style="width: 10%; text-align:center;">지역</th>
		    <th style="width: 30%; text-align:center;">선택</th>
		  </tr>
		  <c:forEach var="study" items="${studys}" >
			  <tr style = "text-align:center;">
			    <td><c:out value="${study.sname}"/></td>
			    <td><c:out value="${study.sobject}"/></td>
			    <td><c:out value="${study.sowner}"/></td>
			    <td><c:out value="${study.slocation}"/></td>
			    <td>
			    	<button class="btn btn-outline-dark" type="button" onclick="location.href='/study/read?snum=${study.snum}'">신청</button>
			      <c:if test="${study.sowner eq id}">
			      <button class="btn btn-outline-dark" type="button" onclick="location.href='/study/modify?snum=${study.snum}'">수정</button>
			      <button class="btn btn-outline-danger" type="button" onclick="location.href='/study/delete?snum=${study.snum}'">삭제</button>
			      </c:if>
			    </td>
			  </tr>
		  </c:forEach>
		</table>
	</div>

</body>

</html>