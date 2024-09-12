<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style>
    /* 전체 페이지 스타일 */
    body {
        margin: 0;
        padding: 0;
        background-color: white;
        font-family: Arial, sans-serif;
        height: 200vh; /* 스크롤을 테스트하기 위해 페이지 높이를 크게 설정 */
        transition: background-color 2s ease-in-out;
    }

    /* 첫 번째 이미지와 텍스트 컨테이너 */
    .content-left {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 50px;
        height: 100vh; /* 화면의 세로를 100% 차지 */
    }

    /* 이미지 크기 조정 */
    .content-left img {
        max-width: 35%; /* 이미지가 화면의 35%를 차지 */
        height: auto;
    }

    /* 첫 번째 텍스트 스타일 */
    .content-left p {
        font-size: 24px;
        color: #333;
        width: 40%; /* 텍스트가 화면의 50%를 차지 */
        text-align: left; /* 텍스트를 왼쪽 정렬 */
        margin-left: 20px; /* 이미지와 텍스트 사이 간격 */
        line-height: 1.6;
    }

    /* 두 번째 이미지와 텍스트 컨테이너 */
    .content-right {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 50px;
        opacity: 0; /* 처음에는 보이지 않음 */
        transition: opacity 2s ease-in-out;
        flex-direction: row-reverse;
    }

    /* 두 번째 이미지 크기 조정 */
    .content-right img {
        max-width: 35%;
        height: auto;
    }

    /* 두 번째 텍스트 스타일 */
    .content-right p {
        font-size: 24px;
        color: #333;
        width: 50%;
        text-align: left;
        margin-left: 20px;
    }

    /* 배경색 전환 */
    .bg-transition {
        background-color: #FBF6EF;
        transition: background-color 2s ease-in-out;
    }

</style>
</head>
<body>

<h1>메인 페이지</h1>

<!-- 첫 번째 이미지와 텍스트: 페이지 로드 시 표시됨 -->
<div class="content-left">
    <img src="${pageContext.request.contextPath}/images/main.png" alt="첫 번째 이미지">
    <p>자신이 제대로 앞에 나아가는 게<br> 맞는지 궁금하지 않나요?</p>
</div>

<!-- 두 번째 이미지와 텍스트: 스크롤 시 서서히 나타남 -->
<div class="content-right" id="content-right">
    <img src="${pageContext.request.contextPath}/images/main(2).png" alt="두 번째 이미지">
    <p>자신이 어떤 하루를 보냈는지 <br> 차근차근 기록해보는 게 어떨까요?</p>
</div>

<script>
    window.addEventListener('scroll', function() {
        var scrollPosition = window.scrollY;
        var contentRight = document.getElementById('content-right');
        var body = document.body;

        // 스크롤이 600px 이상일 때 두 번째 이미지와 텍스트 서서히 나타남
        if (scrollPosition > 600) {
            contentRight.style.opacity = 1;
            body.classList.add('bg-transition');  // 두 번째 이미지가 나타날 때 배경색 전환
        } else {
            contentRight.style.opacity = 0;
            body.classList.remove('bg-transition');  // 배경색 원래대로
        }
    });
</script>

</body>
</html>