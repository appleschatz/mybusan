<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>bssRUN intro</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

    <link href="css/Bcss.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">
    
    <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <style>
        *{font-family: 'Nanum Gothic', sans-serif;}
    </style>

    </head>
  <body>
    <!-- 네비게이션 바 -->
    <header class="p-3 text-bg-white">
        <div class="container">
          <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <img src="images/아이콘.png" class="img-size">
              <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
            </a>
    
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
              <li class="jjstyle"><a href="#" class="nav-link">BuSaNsRUN</a></li>
              <li class="jstyle"><a href="#" class="nav-link px-4 text-black">여행지</a></li>
              <li class="jstyle"><a href="#" class="nav-link px-4 text-black">일정만들기</a></li>
              <li class="jstyle"><a href="#" class="nav-link px-4 text-black">팀구하기</a></li>
              <li class="jstyle"><a href="#" class="nav-link px-4 text-black">이용방법</a></li>
            </ul>
    
            <div class="search">
                <input type="text" class="s-box" placeholder="장소를 찾아보세요!">
                <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" class="img-size2" />
              </div>
    
            <div class="text-end">
              <button type="button" class="l-box">로그인</button>
              <button type="button" class="l-box">회원가입</button>
            </div>
          </div>
        </div>
      </header>


       <!-- 슬라이더 -->
       <!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

    <!-- Indicators/dots -->
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
      <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
      <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
    </div>
    
    <!-- The slideshow/carousel -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/광안대교_마린시티_풍경-1.jpg" alt="" class="d-block" style="width:100%">
      </div>
      <div class="carousel-item">
        <img src="images/20201206-EX7A2469.jpg" alt="" class="d-block" style="width:100%">
      </div>
      <div class="carousel-item">
        <img src="images/66.jpg" alt="" class="d-block" style="width:100%">
      </div>
    </div>
    
    <!-- Left and right controls/icons -->
    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
      <span class="carousel-control-next-icon"></span>
    </button>
  </div>
  
  <div class="container-fluid mt-3">
    <p class="t-style">BuSaNsRUN에서 여행을 시작하세요!</p>
  </div>



  <!-- 앨범형 -->
  <div class="row row-cols-1 row-cols-md-3 g-4 r-style">
    <div class="col-lg-3">
      <div class="card h-100">
        <img src="images/카드1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h6 class="card-title">여행정보</h6>
          <p class="card-text">부산의 관광명소, 음식점 등의 정보를 확인하세요.</p>
        </div>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="card h-100">
        <img src="images/카드2.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h6 class="card-title">여행일정</h6>
          <p class="card-text">여행자들이 올려놓은 여행일정을 확인하고 나만의 일정을 계획해보세요.</p>
        </div>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="card h-100">
        <img src="images/카드3.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h6 class="card-title">팀구하기</h6>
          <p class="card-text">여행자들과 정보를 공유하고 나만의 팀을 구해보세요.</p>
        </div>
      </div>
    </div>
  </div>
          
  <div class="container-fluid mt-3">
    <p class="tt-style">인기 여행일정</p>
    <p class="ttt-style">다른 사용자들의 일정을 참고해 나만의 여행을 계획해보세요!</p>
  </div>


  <!-- 인기 여행일정 -->
  <div class="row row-cols-1 row-cols-md-3 g-4 r-style">
    <div class="col-lg-3">
      <div class="card h-100">
        <img src="images/케이블카.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <div class="card-footer">
          <small class="text-muted">Last updated 3 mins ago</small>
        </div>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="card h-100">
        <img src="images/케이블카.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <div class="card-footer">
          <small class="text-muted">Last updated 3 mins ago</small>
        </div>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="card h-100">
        <img src="images/케이블카.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <div class="card-footer">
          <small class="text-muted">Last updated 3 mins ago</small>
        </div>
      </div>
    </div>
    </div>
    <div class="row row-cols-1 row-cols-md-3 g-4 r-style">
      <div class="col-lg-3">
        <div class="card h-100">
          <img src="images/케이블카.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
          <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="card h-100">
          <img src="images/케이블카.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
          <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="card h-100">
          <img src="images/케이블카.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
          <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      </div>
        

      <div class="container-fluid mt-3">
        <p class="tttt-style">인기 장소 TOP 5</p>
      </div>


      <!-- 인기 장소 TOP5 -->
      <div class="row i-style">
        <div class="col-lg-3">
        <img src="images/케이블카.jpg" class="c-img" alt="...">
        </div>
        <div class="col-lg-3">
        <img src="images/케이블카.jpg" class="c-img" alt="...">
        </div>
        <div class="col-lg-3">
        <img src="images/케이블카.jpg" class="c-img" alt="...">
          </div>
      </div>
      <div class="row ii-style">
        <div class="col-lg-5">
          <img src="images/케이블카.jpg" class="cc-img" alt="...">
        </div>
        <div class="col-lg-4">
          <img src="images/케이블카.jpg" class="ccc-img" alt="...">
        </div>
      </div>



      <!-- FOOTER -->
      <div class="container con-style">
        <footer class="row py-5 footer-style border-top">
          <div class="col mb-3">
            <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
              <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
            </a>
            <p class="text-muted f-style">Copyright ⓒ 2022 BuSaNsRUN.com, All Rights Reserved.</p>
          </div>
      
          <div class="col mb-3">
      
          </div>
      
          <div class="col mb-3">
            <h5 class="fff-style">BuSaNsRUN</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">여행지</a></li>
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">일정만들기</a></li>
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">팀구하기</a></li>
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">Q&A</a></li>
            </ul>
          </div>
      
          <div class="col mb-3">
            <h5 class="fff-style">회사이야기</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted ">회사소개</a></li>
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">이용방법</a></li>
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">광고 및 제휴</a></li>
            </ul>
          </div>
      
          <div class="col mb-3">
            <h5 class="fff-style">고객센터</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
              <li class="nav-item mb-2 ff-style"><a href="#" class="nav-link p-0 text-muted">문의하기</a></li>
            </ul>
          </div>
        </footer>
      </div>
        

      

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>