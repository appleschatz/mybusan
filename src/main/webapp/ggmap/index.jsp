<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <script type="text/javascript">


 // In the following example, markers appear when the user clicks on the map.
 // Each marker is labeled with a single alphabetical character.
 const labels = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 let labelIndex = 0;

 function initMap() {
   const bangalore = { lat: 12.97, lng: 77.59 };
   const map = new google.maps.Map(document.getElementById("map"), {
     zoom: 12,
     center: bangalore,
   });
   
  
 
 window.initMap = initMap;
    	
    	
    </script>
   <style>
  #map {
    height: 100%;
     width: 50%;
     background-color:grey;
     float:right;
    
  }
  html, body {
    height: 100%;
    margin: 0;
    padding: 0;
  }
</style>
  </head>
  <body>
    <div id="map"></div>
    
    <div onclick="addlist()" style='cursor:pointer;'>장소1</div>

<script>
	function addlist(){
		//alert('리스트추가완료');
			  // 1. <div> element 만들기
			  const newDiv = document.createElement('div');
			  
			  // 2. <div>에 들어갈 text node 만들기
			      var latVal = ${boardDTO.lat}; // 게시글 DTO에서 위도값을 가져옴
                  var lngVal = ${boardDTO.lon}; // 게시글 DTO에서 경도값을 가져옴
                  var mapLocation = {lat: 29, lng:100}; // 위도, 경도를 가지는 객체를 생성
              
			  const newText = mapLocation
			  
			  // 3. <div>에 text node 붙이기
			  newDiv.appendChild(newText);
			  
			  // 4. <body>에 1에서 만든 <div> element 붙이기
			  document.body.appendChild(newDiv);
			} 
	

</script>

    <!-- 
     The `defer` attribute causes the callback to execute after the full HTML
     document has been parsed. For non-blocking uses, avoiding race conditions,
     and consistent behavior across browsers, consider loading using Promises
     with https://www.npmjs.com/package/@googlemaps/js-api-loader.
    -->
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&v=weekly"
      defer
    ></script>
    
  </body>
</html>