<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drawer.jsp</title>
<style type="text/css">

body {
	height: 2000px;
	background: red;
}

div {
	box-sizing: border-box;
	border: 1px solid red;
	width: 100px;
	height: 100%;
	position: fixed;
	background: yellow;
	top: 0px;
/* 	left: -100px; */
	
	transition: left 1s;
	
 	overflow: visible;
}

span {
	box-sizing: border-box;
	width: 100px;
	border: 1px solid blue;
	position: absolute;
	right: -100px;
	bottom: 50%;
	text-align: center;
}
</style>
<script type="text/javascript">
window.onload = () => {
	let drawer = document.querySelector('div');
	let handle = document.querySelector('span');
	
	let isOpen = false;
	
	handle.onclick = e => {
		if (!isOpen)
			drawer.style.left = "0px";
		else
			drawer.style.left = "-100px";
		
		isOpen = !isOpen;
	}
}
</script>
</head>
<body>
<h1>Drawer 만들기</h1>
<hr>
<div>
	box1
	<span>손잡이</span>
</div>
<hr>
</body>
</html>