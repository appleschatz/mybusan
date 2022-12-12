<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>google_map</title>
    <!-- javascript -->
    <script src="gm.js" defer></script>
</head>
<body>
    <div class="main_content">
        <h1 class="content_title">google_map</h1>
        <button type="button" id="map_button">이동하기</button>
        <div >부산어딘가</div>
        
       <table>
    <tr>
        <th>장소번호</th>
        <th>장소명</th>
        <th>카테고리명</th>
        <th>시도명</th>
        <th>시군구명</th>
        <th>읍면동명</th>
        <th>리명</th>
        <th>도로명주소</th>
        <th>위도</th>
        <th>경도</th>
    </tr>
    
    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.p_code}</td> 
            <td><a href="place/read.do?p_code=${dto.p_code}">${dto.p_name}</a></td>
            <td>${dto.p_category}</td>
            <td>${dto.p_sido}</td>
            <td>${dto.p_sigungu}</td>
            <td>${dto.p_umd}</td>
            <td>${dto.p_ri}</td>
            <td>${dto.p_address}</td>
            <td>${dto.p_lng}</td>
             <td>${dto.p_lat}</td>													
        </tr>	
    </c:forEach>
    
    </table>
        
        <div id="map" style="width: 50%; height: 400px;"></div>
        
        
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&v=weekly"  defer>
 </script> 
</body>
</html>