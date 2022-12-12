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
      
        <div ><input type="button" value="초기화" onclick=""></div>
         <li class="jjstyle"><a href="#" class="nav-link" onclick="location.href='/home.do'">BuSaNsRUN</a></li>
        
         <div class="row">
		<table id="list" width="100%" class="table table-bordered table-hover text-center">
    <tr>
        <th>장소번호</th>
        <th>장소명</th>
        <th>카테고리명</th>
        <th>시도명</th>
        <th>시군구명</th>
        <th>읍면동명</th>
        <th>리명</th>
        <th>도로명주소</th>
        <th>위도/경도</th>
        
    </tr>
    	
    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.p_code}</td> 
            <td>${dto.p_name}</td>
            <td>${dto.p_category}</td>
            <td>${dto.p_sido}</td>
            <td>${dto.p_sigungu}</td>
            <td>${dto.p_umd}</td>
            <td>${dto.p_ri}</td>
            <td>  ${dto.p_address} </td>
             <td id="a1" style="cursor:pointer;">${dto.p_lng}</td>	
              <td id="a2" >${dto.p_lat}</td>												
        </tr>	
    </c:forEach>
    

    
    </table>
    
    
    <div class="col-lg-12" id="ex1_Result1" ></div> 
		<div class="col-lg-12" id="ex1_Result2" ></div> 
    
    
    
    
    
    
        
    <script type="text/javascript">
 	var a;
 	var b;
 	var name=0;
    
	$("#list tr").click(function(){ 	

	var str = ""
	var tdArr = new Array();	// 배열 선언
	
	// 현재 클릭된 Row(<tr>)
	var tr = $(this);
	var td = tr.children();
	
	// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	
	// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
	td.each(function(i){
		tdArr.push(td.eq(i).text());
	});
	
	console.log("배열에 담긴 값 : "+tdArr);
	
	// td.eq(index)를 통해 값을 가져올 수도 있다.
	
	var p_lat = td.eq(8).text();
	var p_lng = td.eq(9).text();
	
	a=parseFloat(p_lng);
	b=parseFloat(p_lat);
	str +=	" * 클릭된 Row의 td값 = 위도. : " + p_lng + "경도: " +p_lat + "</font>"
			;		
	
		
	$("#ex1_Result2").html(str);
	changeCenter();
});
	
	
	 function changeCenter() {
		
		 	name++;
	        var aa = {lat : a , lng : b};

	      map.panTo(aa);
	      map.setZoom(15.5);
	      
	      var mainMarker = new google.maps.Marker({
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
	      
	   return name;
	 }  
	
	 </script>
	    
	    
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&v=weekly"  defer>
 	
   
   
   </script> 
</body>
</html>