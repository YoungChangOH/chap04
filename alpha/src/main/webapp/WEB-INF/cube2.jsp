<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cube.jsp</title>
<style type="text/css">

.perspective {
	border: 10px solid green;
	display: inline-block;
	margin: 100px 0px 0px 100px;
	
	perspective: 500px;
}

.cube {
	border: 10px solid blue;
	display: inline-block;
	
   	transform-style: preserve-3d;

/* 	transform: rotateX(45deg); */
	animation: rotate 5s infinite linear;
}

.base {
	border:10px solid red;
	width: 200px;
	height: 200px;
	font-size: 2em;
	text-align: center;
	line-height: 200px;
	
}

@keyframes rotate {
	from {
		transform: rotateX(0deg);
	}
	to {
		transform: rotateX(360deg);
	}
}

</style>
</head>
<body>
<h1>CSS 3D 응용 큐브 만들기</h1>
<hr>
<section class="perspective">
	<article class="cube">
		<div class="base">Base</div>
	</article>
</section>
</body>
</html>