<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drawer.jsp</title>
<style type="text/css">

img {
	float: left;
	margin: 20px;
}

div {
	border: 10px solid red;
	width: 100px;
	height: 100px;
	margin: 10px;
	float: right;
}

section {
	display: flex;
	justify-content: space-around;
}
article {
	border: 10px solid red;
	width: 100px;
	height: 100px;
	margin: 10px;
	flex-shrink: 0;
}

</style>
</head>
<body>
<h1>float 속성 이해</h1>
<hr>
<img alt="" src="http://via.placeholder.com/200X100">
<p>
CSS는 Cascading Style Sheets의 약자입니다.
CSS는 HTML 요소들이 각종 미디어에서 어떻게 보이는가를 정의하는 데 사용되는 스타일 시트 언어입니다.
HTML4 부터는 이러한 모든 서식 설정을 HTML 문서로부터 따로 분리하는 것이 가능해졌습니다.
오늘날 대부분의 웹 브라우저들은 모두 CSS를 지원하고 있습니다.
CSS는 Cascading Style Sheets의 약자입니다.
CSS는 HTML 요소들이 각종 미디어에서 어떻게 보이는가를 정의하는 데 사용되는 스타일 시트 언어입니다.
HTML4 부터는 이러한 모든 서식 설정을 HTML 문서로부터 따로 분리하는 것이 가능해졌습니다.
오늘날 대부분의 웹 브라우저들은 모두 CSS를 지원하고 있습니다.
</p>
<hr>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<hr style="clear: both;">
<section>
<article>box4</article>
<article>box6</article>
<article>box7</article>
</section>
<hr>

</body>
</html>