<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>학생 정보</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" flush="false"></jsp:include>

	<div align=center>
		<header style ="font-size: 30px; text-align:center;">스터디 정보</header><br>
		
		<div style = "margin-left:100px; margin-right:100px">
		<table class="table table-striped" >
		    <tr><th style ="width: 20%; text-align:center">이름</th><td style="text-align:center; width: 80%;"><c:out value="${study.sname}"/></td></tr>
			<tr><th style ="width: 20%; text-align:center"> 설명 </th><td style="text-align:center"><c:out value="${study.sobject}"/></td></tr>
			<tr><th style ="width: 20%; text-align:center"> 지역 </th><td style="text-align:center"><c:out value="${study.slocation}"/></td></tr>
		</table>
		</div>

		<br><br>

		<h2 style ="font-size: 30px; text-align:center;"> 스터디 신청</h2>
		<form name=form1 action="http://localhost:8080/study/comment/register/" method="post">
			<div class="mb-3">
			<input type ="hidden" name = "snum" value="<%=request.getParameter("snum") %>"/>
			<div style ="margin-right: 100px; margin-left:100px">
				  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name = "contents" type="text" placeholder="댓글내용을 입력해주세요"></textarea>
				  <br>
				  <div style ="float: right">
				  	<input class="btn btn-outline-dark" type="submit" value="입력">
				  </div>
			  </div>
			</div>
		</form>
		<br><br>

		  <div style ="margin-right: 100px; margin-left:100px">
		  <c:forEach var="comment" items="${comments}" >

		  <div class="card">
		 	 <div class="card-body">
			    <h5 class="card-title" style ="float:left; margin-bottom:0px; margin-right:20px"><c:out value= "${comment.sid}"/></h5>
			    <p class="card-text" style ="float:left; margin-bottom:0px;"><small class="text-muted"><c:out value="${comment.reg_date}"/></small></p>
			    <br>
			    <p class="card-text" style ="float:left; margin-top:10px; margin-bottom:3px;"><c:out value= "${comment.contents}"/></p>
			    
			    <c:if test="${comment.sid eq id}">
				      <c:url value="/comment/delete?cnum=${comment.cnum}&snum=${comment.snum}" var="url"/><a class="btn btn-secondary" style ="float: right; margin-right: 10px; margin-top :0px" href="${url}">삭제</a>
			    </c:if>
			  </div>
			  
			</div>
		  
		  </c:forEach>
		  </div>
<!-- 		</table> -->
		
		
	</div>
</body>
</html>