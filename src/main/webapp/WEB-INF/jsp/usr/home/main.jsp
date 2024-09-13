<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>

<!-- fullPage.js CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/4.0.13/fullpage.min.css">

<style>
   .fixed-header {
    position: fixed;
    top: 0;
    width: 100%;
    background-color: transparent; /* 배경색을 투명하게 설정 */
    z-index: 1000;
    padding: 10px 0;
    box-shadow: none; /* 그림자 제거 */
}

    /* 섹션 스타일 */
    .section {
        text-align: center;
        font-size: 3em;
        font-family: Arial, sans-serif;
        height: 100vh; /* 섹션을 화면 크기만큼 설정 */
        overflow: hidden; /* 스크롤바 제거 */
    }

    /* 첫 번째 섹션 스타일 (텍스트 왼쪽, 이미지 오른쪽) */
    .content-left {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 50px;
        background-color: white; /* 배경은 하얀색 */
        height: 100vh;
        box-sizing: border-box; /* 추가된 스크롤바 문제 방지 */
    }

    /* 첫 번째 섹션 텍스트 스타일 */
    .content-left p {
        font-size: 24px;
        color: #333;
        width: 50%; /* 텍스트는 화면의 절반을 차지 */
        text-align: left; /* 텍스트를 왼쪽에 정렬 */
        margin-right: 20px; /* 텍스트와 이미지 사이에 간격 */
    }

    /* 첫 번째 섹션 이미지 스타일 */
    .content-left img {
        max-width: 35%; /* 이미지가 화면의 35%를 차지 */
        height: auto;
        margin-left: 20px; /* 이미지와 텍스트 사이에 간격 */
    }

    /* 두 번째 섹션 배경색 변경 */
    .section2 {
        background-color: #FBF6EF; /* 두 번째 섹션 배경색 */
    }

    /* 세 번째 섹션 스타일 (이미지를 꽉 채우기) */
    .content-fullscreen {
        position: relative;
        height: 100vh; /* 화면 전체를 차지 */
        background-image: url('${pageContext.request.contextPath}/images/main(3).png'); /* 세 번째 이미지 경로 */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* 세 번째 섹션 텍스트 스타일 */
    .content-fullscreen p {
        font-size: 36px;
        color: white;
        text-align: center;
        background: rgba(0, 0, 0, 0.5); /* 텍스트 배경 반투명 */
        padding: 20px;
        border-radius: 10px;
    }

</style>
</head>
<body>

<!-- 고정된 헤더 -->
<div class="fixed-header" id="fixed-header">
    <%@ include file="../common/head.jspf"%> <!-- 공통 헤더 포함 -->
</div>

<!-- fullPage.js 구조 -->
<div id="fullpage">
    <!-- 첫 번째 섹션 -->
    <div class="section section1">
        <div class="content-left">
            <p>자신이 제대로 앞에 나아가는 게<br>맞는지 궁금하지 않나요?</p>
            <img src="${pageContext.request.contextPath}/images/main.png" alt="첫 번째 이미지">
        </div>
    </div>

    <!-- 두 번째 섹션 (배경색 #FBF6EF) -->
    <div class="section section2">
        <div class="content-right" id="content-right">
            <img src="${pageContext.request.contextPath}/images/main(2).png" alt="두 번째 이미지">
            <p>자신이 어떤 하루를 보냈는지<br>차근차근 기록해보는 게 어떨까요?</p>
        </div>  
    </div>

    <!-- 세 번째 섹션 (이미지를 화면에 꽉 채움) -->
    <div class="section section3">
        <div class="content-fullscreen" id="content-fullscreen">
            <p>하루의 한번 시작과 마무리를<br>이곳에서 함께 해주세요</p>
        </div>
    </div>
</div>

<!-- fullPage.js JS 파일 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/4.0.13/fullpage.min.js"></script>

<!-- fullPage.js 설정 -->
<script>
    new fullpage('#fullpage', {
        // fullPage.js 설정
        sectionsColor: ['white', '#FBF6EF', 'white'],  // 각 섹션별 배경색 설정
        anchors: ['firstPage', 'secondPage', 'thirdPage'],
        navigation: true,
        slidesNavigation: true,
        scrollingSpeed: 700,
         // 여기에 라이센스 키를 입력하세요.
    });
</script>

</body>
</html>