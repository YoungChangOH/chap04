<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>animation.jsp</title>
<style type="text/css">
div {
	border: 1px solid red;
	width: 100px;
	height: 100px;
	
	animation: exam1 2s infinite alternate;
}

@keyframes exam1 {
	from {
		border: 1px solid red;
		transform: translateX(0) translateY(400px) rotate(0);
		
		background: red;
	}
	
	50% {
		background: blue;
	}
	
	to {
		border:50px solid blue;
		transform: translateX(400px) translateY(0px) rotate(3600deg);
		border-radius: 100%;
		
		background: green;
	}
}

</style>
</head>
<body>
<h1>Animation 이해</h1>
<hr>
<div>box</div>
</body>
</html>