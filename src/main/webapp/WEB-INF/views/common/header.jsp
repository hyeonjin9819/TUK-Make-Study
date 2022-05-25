<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
        	<button class="btn btn-outline-light" type="button" onclick="location.href='/study/list'">스터디 목록</button>
        </li>
      </ul>
      <form class="d-flex">
        <!-- <button class="btn btn-outline-light" type="submit">스터디 리스트</button> -->
        <button class="btn btn-outline-light" type="button" onclick="location.href='/study/member/logout'">로그아웃</button>
      </form>
    </div>
  </div>
</nav>
