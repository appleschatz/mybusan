<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>       
    
<html lang="ko">
<head>
    <title>bssRun placeList</title>
    
	<script src="../js/jquery-3.6.1.min.js"></script>
    <script src="../js/jquery.cookie.js"></script>
    <script src="../js/place.js"></script>
    <link href="../css/css1213.css" rel="stylesheet">

</head>
<body>
    <div id="gugun_first">
	    <div class="fl" style="width:256px; position:absolute;">
	    	<div class="title_box">
	    		<div class="gugun_title">구/군별로 선택</div>
	    	</div>
	    	
	    	<div id="search_box" style="width:256px; height:51px; padding:10px; border-bottom:solid #d6d6d6 1px;">
		    	<div>
	    		     <a href='javascript:location.reload();'><img src="../images/왼화살표.png" class="dong_box_img" id="gangseogu_dui"></a>
	    	    </div>
    	    </div>
    	    
	    	<div id="ggid" class="guguns" style="height:715px;">
				<c:forEach var="dto" items="${list2}" varStatus="vs">
			    	<div class="gugun_list" id="gangseogu"> 
			    		<!--<img src="../images/카드1.jpg" class="gugunList_img">-->
			    		
			    		<div  class="gugun_name" id="sggid${vs.count}">
			    		    <a href="#" onclick="test('${dto.p_sigungu}')">
			    		        ${dto.p_sigungu} 
			    		        <img src="../images/화살표.png" class="hsp_img">
			    		    </a>
			    		</div>
			    		
			    	</div>
	 			</c:forEach>
	    	</div>
	    </div>
    </div>
    
    
    <script>
    $('#gangseogu_dui').hide();
		function test(p_sigungu){
			//alert(p_sigungu); 예)강서구
			$('#gangseogu_dui').show();
			$.ajax({
                url:'/place/list3.do'
               , type:'get'
               , data:{'p_sigungu':p_sigungu}
               , success:function(data){
            	    //alert(data);
                    let a='';
                    $.each(data, function(key, value){
						a+='<div class="gugun_list" id="gangseogu">';
						a+='    <div  class="gugun_name" id="sggid">';
						a+= value.p_umd;
						a+='       <img src="../images/화살표.png" class="hsp_img">';
						a+='    </div>';
						a+='</div>';
						a+='';
                    });//each end
					
                    $("#ggid").empty();
                    $("#ggid").html(a);
                }//success end
		    });//ajax() end	
			
		}//test() end
    
    
    
    </script>
    
  
    	
</body>
</html>