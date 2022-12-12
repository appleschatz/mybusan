<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <div id="map" style="width: 50%; height: 400px;"></div>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOEzcMjj5U0v2WX9e3uNfvqPJsgsl0Ttk&callback=initMap&region=kr"></script>
    </div>
</body>
</html>