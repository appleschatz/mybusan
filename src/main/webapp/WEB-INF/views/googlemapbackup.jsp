<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일정만들기</title>
     <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

   
      <script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
      <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

  <style id="compiled-css" type="text/css">
    

    /* EOS */
  </style>

  <script id="insert"></script>
    
    
    <!-- javascript -->
    <script >
    var map;
   
	
    function initMap() {
    	var busan = { lat: 35.1795543, lng: 129.0756416 };
      map = new google.maps.Map( document.getElementById('map'), {
          zoom: 11,
          center: busan
        });
     
      var mainMarker = new google.maps.Marker({
        position: busan,
        map: map,
        label: {
            text: "부산",
            color: "#C70E20"
        },
        icon: {
            url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
            labelOrigin: new google.maps.Point(100, 55)
        }
      });
     
    
    
    }
    </script>
    <script>
     
    
   /*  function addlist(){
		
			  const newplace = document.createElement('div');
			  
			 
			  var mapLocation = {'lat :' document.getElementById("a1").innerText ,'lng :' document.getElementById("a2").innerText };
			  const newText = document.createTextNode(mapLocation);
			  
			
			  newplace.appendChild(newText);
			  
			 
			  document.body.appendChild(newplace);
			}  */
			
			
			
			
			
			
    </script>
</head>
<body>
        <h1 class="content_title">일정만들기</h1>
        
          <div id="map" style="width: 400px; height: 500px; float:right;"></div>
      
      
      <div>
        <div ><input type="button" value="초기화" onclick="deleteMarkers()"></div>
       <a href="#" class="nav-link" onclick="location.href='/home.do'">BuSaNsRUN</a>
         </div>
         
         <form id='form' onsubmit="return false" action=''>
         <table class='table'>
        <tr>
          <th>제목</th>
          <td>	<input type="hidden" name='user_id' value="">
          		<input type="text" name="s_title" value="">
          </td>    
        </tr>
        <tr>
          <th>내용</th>
          <td><input type="text" name="s_content" ></td>
        </tr>
        <tr>
          <th>출발일</th>
          <td><input type='date' name='s_startdate'></td>
        </tr>
        <tr>
          <th>종료일</th>
          <td><input type="date" name="s_enddate" ></td>
        </tr>
        </table>
        <div id="placelist"><h2>일정목록</h2></div>
       
       	</form>
         <input type='submit' value='팀등록'>
        
        
         <div class="row">
		<table id="list" width="100%" class="table table-bordered table-hover text-center">
    <tr>
        <th>장소번호</th>
        <th>장소명</th>
      
        <th>위도/경도</th>
        
    </tr>
    	
    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.p_code}</td> 
            <td>${dto.p_name}</td>
          
             <td id="a1" >${dto.p_lng}</td>	
              <td id="a2" >${dto.p_lat}</td>												
        </tr>	
    </c:forEach>
    

    
    </table>
    </div>
    
    <div class="col-lg-12" id="ex1_Result1" ></div> 
		<div class="col-lg-12" id="ex1_Result2" ></div> 
    
    
    
    
    
    
        
    <script type="text/javascript">
 	var a;
 	var b;
 	var name=0;
 	var list=[];
 	var i=0;
    
	$("#list tr").click(function(){ 	

	var tdArr = new Array();	// 배열 선언
	
	// 현재 클릭된 Row(<tr>)
	var tr = $(this);
	var td = tr.children();
	
	
	
	// td.eq(index)를 통해 값을 가져올 수도 있다.
	
	var p_lat = td.eq(2).text();
	var p_lng = td.eq(3).text();
	var p_name = td.eq(1).text();
	var p_code = td.eq(0).text();
	
	 list[i] = p_name;
	 $("#placelist").append("<div id=p_name><input id='p_code' type='hidden' value='"+p_code+"'>"+list[i]+"</div>");
	 i++
	
	a=parseFloat(p_lng);
	b=parseFloat(p_lat);
		
	
	
	
		
	
	changeCenter();

});
	 let markers = [];
	
	 function changeCenter() {
		
		 	name++;
	        var aa = {lat : a , lng : b};

	      map.panTo(aa);
	      map.setZoom(12);
	      
	      var Marker = new google.maps.Marker({
	          position: aa,
	          map: map,
	          label: {
	              text: name,
	              color: "black"
	          },
	          icon: {
	              url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
	              labelOrigin: new google.maps.Point(40, 23)
	          }
	        });
	   markers.push(Marker);
	   return name;
	 }  
	
	 function setMapOnAll(map) {
		  for (let i = 0; i < markers.length; i++) {
		    markers[i].setMap(map);
		  }
		}
	 function deleteMarkers() {
		 setMapOnAll(null);
		 markers = [];
		 list = [];
		 initMap()
		 name=0;
		 $('form')[0].reset();
		 $("#placelist").empty();
		// $("#p_name").removeChild();
		 }
	 </script>
	    
	    
	    
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&v=weekly"  defer>
 	
   
   
   </script> 
</body>
</html>