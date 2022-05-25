<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<nav class="navbar navbar-expand-lg" style="background-color: #000000;">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
   <!-- <img src = "images\tukorea.png" width="12", height="12" border = "0" > -->
      <h3 class="navbar-brand" style="color: #ffffff;">한국공대 스터디 찾기 </h3>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        </li>
      </ul>
      <form class="d-flex">
        <button class="btn btn-outline-light" type="submit">로그아웃</button>
      </form>
    </div>
  </div>
</nav>
<head>
	<meta charset="UTF-8">
	<title>학생 등록</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div align=center>
		<header>회원가입</header>
		<form name=form1 action="http://localhost:8080/study/member/register/" method="post">
		<table class="table table-hover">	
			<tr><th>LoginID</th><td><input type="text" name="id" autofocus placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>LoginPWD</th><td><input type="text" name="passwd" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>YourName</th><td><input type="text" name="username"  placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>StudentNumber</th><td><input type="text" name="snum" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>Department</th><td><input type="text" name="depart" placeholder="예)컴퓨터공학부"></td></tr>
			<tr><th>MobileNumber</th><td><input type="text" name="mobile" placeholder="***-****-****"></td></tr>
			<tr><th>EmailAddress</th><td><input type="text" name="email" placeholder="****@****.***"></td></tr>
		</table>
		<dl>
			<dd><input class="btn btn-outline-dark" type="submit" name="submit" value="회원가입"></dd>
			<!-- <dd><input class="btn btn-outline-dark" type="reset" name="reset" value="다시 작성"></dd> -->
		</dl>
		</form>
	</div>
</body>
</html>