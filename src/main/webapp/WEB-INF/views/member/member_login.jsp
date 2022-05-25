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
    </div>
  </div>
</nav>

<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div align=center style="margin-top:15%;">
		<!-- <img src="/images/tukorea.png" width="30%" heigh="10%" border="10"> -->
		<form name=form1 action="http://localhost:8080/study/member/login/" method="post">
			<!-- <div style="margin: 0 auto; display:flex; justify-content:center; align-items: center;"> -->
			<div style="margin: 0 auto;margin-left: auto; margin-right: auto; display: inline-block;">
			  <div class="row mb-3">
			    <label for="inputEmail3" class="col-sm-2 col-form-label">ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputEmail3" name="id" autofocus placeholder="공백없이 입력하세요">
			    </div>
			  </div>
			  <div class="row mb-3">
			    <label for="inputPassword3" class="col-sm-2 col-form-label">PW</label>
			    
			    <div class="col-sm-10">
			      <input type="password" class="form-control" name="passwd" autofocus placeholder="공백없이 입력하세요" id="inputPassword3">
			    </div>
			  </div>
				<!-- <div class = "mb-3">
					<label for="inputEmail3" class="col-sm-2 col-form-label">ID</label>
				      <input type="text" class="form-control" id="inputEmail3" name="id" autofocus placeholder="공백없이 입력하세요">
				</div>
				<div class = "mb-3">
					<label for="inputEmail3" class="col-sm-2 col-form-label">PW</label>
				    <input type="password" class="form-control" id="inputEmail3" name="passwd" autofocus placeholder="공백없이 입력하세요">
				</div> -->
			</div>
			<div>
			<input class="btn btn-outline-dark" style="margin:10px;" type="submit" name="submit" value="로그인">
			<a class="btn btn-outline-dark" type="submit" name="submit" href="http://localhost:8080/study/member/register" value="회원가입">회원가입</a>		
			</div>
			<!-- <input class="btn btn-primary btn-sm" type="reset" name="reset" value="다시 작성"> -->
		</form>
		<br>
		</div>
		<!-- <a href="http://localhost:8080/study/member/register">회원가입</a> -->
	</div>
</body>
</html>