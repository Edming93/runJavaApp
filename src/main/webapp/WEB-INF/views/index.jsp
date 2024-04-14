<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type="button" id="imgUtilsBtn" value="imgUtils실행">
<div id="result"></div>

<script>
	document.getElementById('imgUtilsBtn').addEventListener('click', function() {
		console.log("1111111")
		fetch('/runJavaApp')
		.then(response => response.text())
		.then(result => {
			
			// 결과값은 받아 올 수 있으면 만들기. 결과값 없이 어플만 실행시킬거면 a링크나 간단한 호출도 괜찮음
			document.getElementById('result').textContent = result;
		})
		.catch(error => {
			console.error('Error:',error);
		});
	});
</script>
</body>
</html>