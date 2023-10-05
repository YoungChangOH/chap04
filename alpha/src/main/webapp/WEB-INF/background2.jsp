<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gradient.jsp</title>
<style type="text/css">
body {
	background-image: url('/media/alpha.png'), url('img/BackgroundFront.png'), url('img/BackgroundBack.png');
	background-repeat: no-repeat;
	background-size: 200px, 100%, 100%;
	background-attachment: fixed, local, fixed;
	background-position: top left, bottom, 50%;
}
div {
	border: 1px solid red;
	height: 2000px;
	background: linear-gradient(red, blue);
	opacity: 0.5;
}
</style>
</head>
<body>
<h1>Bacground Image(contain/cover) 이해</h1>
<hr>
<div>box1</div>
<hr>
</body>
</html>