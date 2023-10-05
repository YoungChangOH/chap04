<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gradient.jsp</title>
<style type="text/css">
div {
	border: 1px solid red;
	height: 100px;
}

div:nth-of-type(1) {
/* 	background-image: url('/media/alpha.png'); */
	background-image: linear-gradient(red, green, blue);
}

div:nth-of-type(2) {
	background-image: linear-gradient(to right, red, green, blue);
}

div:nth-of-type(3) {
	background-image: linear-gradient(to right bottom, red, green, blue);
}

div:nth-of-type(4) {
	width: 200px;
	height: 200px;
	background-image: radial-gradient(red, blue);
}

div:nth-of-type(5) {
	width: 200px;
	height: 200px;
	background-image: radial-gradient(at 20% 30%, red, blue);
}
</style>
</head>
<body>
<h1>그레디언트(Gradient) 이해</h1>
<hr>
<div>gradient1</div>
<hr>
<div>gradient2</div>
<hr>
<div>gradient3</div>
<hr>
<div>gradient4</div>
<hr>
<div>gradient5</div>
</body>
</html>