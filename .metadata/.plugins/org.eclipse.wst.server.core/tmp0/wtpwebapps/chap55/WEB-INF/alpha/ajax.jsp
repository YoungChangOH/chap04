<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>

<style type="text/css">

#surface{
	border-collapse: collapse;
	font-family: monospace;
	font-size: 2em;
	border-left: 20px solid red;
	background: url('/media/Alpha.png');
	background-repeat: no-repeat;
}

#surface td{
	opacity: 0.5;
}
</style>

<script type="text/javascript">
function startBtn_click(e) {
	console.log("startBtn...");
	start.disabled = true;
	clear.disabled = true;
	
	let timer = setInterval(function(){
		Seconds.innerText = ++Seconds.innerText;
	},1000);
	
	let tid = setInterval(function(){
		
		forCount.innerText = ++forCount.innerText;
		if(Count.innerText == 800){
			clearInterval(tid);
			clearInterval(timer)
			start.disabled = false;
			clear.disabled = false;
			return;
		}
		
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha/data')
		xhr.responseType = 'json';
		xhr.onload = e => {
			let alpha = xhr.response;
			console.log(alpha);
			
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			
			if(td.style.color=='black' && td.style.background=='black') {
				Count.innerText = ++Count.innerText;
			}
			
			
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
			
			
			
		}
		xhr.send();
	},10);
	
	
}
function clearBtn_click(e){
	console.log("clearBtn...");	
	/*for(let i=0; i<surface.rows.length; i++)
		for(let j=0; j<surface.rows[i].cells.length; j++){
			surface.rows[i].cells[j].style.color = 'black';
			surface.rows[i].cells[j].style.background = 'black';
		}
	*/
	
	for(let row of surface.rows){
		for(let td of row.cells) {
			td.style.color = 'black';
			td.style.background = 'black';
		}
	}
	
	forCount.innerText = 0;
	Count.innerText = 0;
	Seconds.innerText = 0;
	
	
	
}
</script>

</head>
<body>
<h1>Spring MVC + XMLHttpRequest</h1>
<hr>
<button id="start" onclick="startBtn_click(event);">Start</button>
<button id="clear" onclick="clearBtn_click(event);">Clear</button>
<hr>
<table border="1"
	width ="60%"
	height="10"
	cellspacing="2">

	<thead>
	<tr>
		<th>forCount</th><th>Count</th><th>Seconds</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td id="forCount" align="right">0</td>
		<td id="Count" align="right">0</td>
		<td id="Seconds" align="right">0</td>
	</tr>	
	</tbody>	
</table>

<hr>
<table id="surface" onmousdown="event.preventDefault();" oncontextmenu="event.preventDefault();">
	<tbody>
	<c:forEach var="row" items="${surface}">
		<tr>
		<c:forEach var="alpha" items="${row}">
			<td style="color: ${alpha.fg}; background: ${alpha.bg};"> ${alpha.ch}</td>
		</c:forEach>
		</tr>
	</c:forEach>
	</tbody>
</table>


</body>
</html>