<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>    

/*
 * 만든이 : 오영창
 * 작성일 : 2023/09/18
 * 과 목 : 웹표준
 */
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script type="text/javascript">
window.onload = function() {

	function sync() {
		btn.disabled = true;
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false); 
		xhr.send();
		console.log(xhr.responseText);
		let alpha = JSON.parse(xhr.responseText);
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		btn.disabled = false;
	}
	
	function async() {
		btn.disabled = true;
		let xhr = new XMLHttpRequest();
		xhr.onload = function(e) {
			console.log(xhr.responseText);
			let alpha = JSON.parse(xhr.responseText);
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
			btn.disabled = false;
		}
		xhr.open('GET', '/alpha');
		xhr.send();
	}
	
 	btn.onclick = sync;
	btn.onclick = async;
	
	setInterval(function() {
		let cnt = no.innerText;
		no.innerText = ++cnt;
	}, 100);
}



</script>
</head>
<body>
<h1>Alpha Graphics</h1>
<hr>
<div id="wrapper">
      <button id="button-start">Start</button>
      <button id="button-reset">clear</button>
<table
	border="1"
	width ="60%"
	height="10"
	cellspacing="2">
	<thead>
		<tr align="center" bgcolor="white">
		<th>forCount</th>
		<th>Count</th>
		<th>Second</th>
	<tbody>
		<tr align="center" bgcolor="white">
		<th><p><span id="no">0</span></p>
		</th>
		<th></th>
		<th>
      <p> <span id="seconds">00</span> : <span id="centiseconds">00</span> </p>
	</th>
	</tbody>

<table id="surface">
	<tbody>
	<forEach var="row" items="${surface}">
		<tr>
		<forEach var="a" items="${row}">
			<td style="fgcolor: black; bgcolor: White;">${a.ch}</td>
		</forEach>
		</tr>
	</forEach>
	</tbody>
    </div>
</table>
</body>
</html>