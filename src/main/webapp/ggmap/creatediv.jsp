<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div onclick="addlist()" style='cursor:pointer;'>장소1</div>
<div onclick="createDiv()" style='cursor:pointer;'>장소2</div>

<script>
	function addlist(){
		//alert('리스트추가완료');
			  // 1. <div> element 만들기
			  const newplace = document.createElement('div');
			  
			  // 2. <div>에 들어갈 text node 만들기
			  var mapLocation1 = {lat: 29, lng: 100};
			  const newText = document.createTextNode(mapLocation1);
			  
			  // 3. <div>에 text node 붙이기
			  newplace.appendChild(newText);
			  
			  // 4. <body>에 1에서 만든 <div> element 붙이기
			  document.body.appendChild(newplace);
			} 
	
	function createDiv() {
		  // 1. <div> element 만들기
		  const newDiv = document.createElement('div');
		  
		  // 2. <div>에 들어갈 text node 만들기
		  const newText = document.createTextNode('안녕하세요');
		  
		  // 3. <div>에 text node 붙이기
		  newDiv.appendChild(newText);
		  
		  // 4. <body>에 1에서 만든 <div> element 붙이기
		  document.body.appendChild(newDiv);
		} 
</script>



</body>
</html>