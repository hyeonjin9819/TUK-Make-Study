<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>정보 수정</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" flush="false"></jsp:include>
	<div align=center>
		<header style ="font-size: 30px; text-align:center;">정보 수정</header>
		
		<form name=form1 action="http://localhost:8080/study/modify/" method="post">
			<div style="margin:50px">
			  <div class="row mb-3">
			    <label for="inputPassword3" class="col-sm-2 col-form-label">목적</label>
			    
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="sobject" autofocus placeholder="공백없이 입력하세요" id="inputPassword3">
			    </div>
			  </div>
			  			  <div class="row mb-3">
			    <label for="inputPassword3" class="col-sm-2 col-form-label">지역</label>
			    
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="slocation" autofocus placeholder="공백없이 입력하세요" id="inputPassword3" >
			    </div>
			  </div>

			</div>
			<input class="btn btn-dark" type="submit" name="submit" value="수정하기">
		
<%-- 		<form name=form1 action="http://localhost:8080/study/modify/" method="post">
			<input type="hidden" name="snum" value="<%=request.getParameter("snum")%>">
		<table class="table table-striped">
			<tr><th>목적</th><td><input  type="text" name="sobject" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>지역</th><td><input type="text" name="slocation"  placeholder="공백없이 입력하세요"></td></tr>
		</table><br>
			<input class="btn btn-outline-dark" type="submit" name="submit" value="최종 수정"> --%>
		</form>
	</div>
</body>
</html>