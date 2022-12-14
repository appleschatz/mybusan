<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>
<html xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:og="https://opengraphprotocol.org/schema/" lang="ko">
<head>

    <meta charset="UTF-8">
    <title>placeList.jsp</title>
	<link href="../css/placeCss2.css" rel="stylesheet"/>
	<script src="../js/placeJs.js"></script> 	
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false&amp;region=KR&amp;language=ko&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw"></script>
	<script src="/res/js/jquery.easypiechart.min.js"></script>
	<script language="javascript" src="/res/js/lz-string.min.js"></script>
	<script src="/res/js/json2.js"></script>
	<script src="/res/js/jstorage/jstorage.min.js"></script>
	<script type="text/javascript" src="/res/js/markerwithlabel.js"></script>

</head>
<body>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-56285148-1', 'auto');
  ga('send', 'pageview');

    function setCookie(cName, cValue, cDay){
        var expire = new Date();
        expire.setDate(expire.getDate() + cDay);
        cookies = cName + '=' + escape(cValue) + '; path=/ '; // 한글 깨짐을 막기위해 escape(cValue)를 합니다.
        if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
        document.cookie = cookies;
    }
 

    function getCookie(cName) {
        cName = cName + '=';
        var cookieData = document.cookie;
        var start = cookieData.indexOf(cName);
        var cValue = '';
        if(start != -1){
            start += cName.length;
            var end = cookieData.indexOf(';', start);
            if(end == -1)end = cookieData.length;
            cValue = cookieData.substring(start, end);
        }
        return unescape(cValue);
    }
</script>

<script type="text/javascript">

    $('#gnb_set_select_currency, #gnb_set_select_lang').on('click', 'li', function(){
      var select_val = $(this).attr('data-val');
      var select_name = $(this).attr('data-name');

      var data = 'member_srl=1391732&'+select_name+'='+select_val;
        $.ajax({  
        type:'post',
        data:data,
        url:'/api/member/set_session',
        success: function(data){
             if(select_name == 'lang'){
             	if(select_val == 'en'){
             		location.href='/plan/create';
             	}else{
             		location.href='/'+select_val+'/plan/create';
             	}
             }else{
             	location.href='/plan/create';
             }
        }
      }); 
    });

   $.ajax({  
        type:'post',
        url:'/api/alert/get_unread_alert_cnt',
        success: function(data){
			//console.log(data);
	        	 if(data.response_result.count > 0){
	        		$('#gnb_login_box .cnt').text(data.response_result.count);
	        		$('#gnb_login_box .cnt').show();
	        	}else{
	        		$('#gnb_login_box .cnt').hide();
	        	}
        }
   }); 

        $('#gnb_notice').click(function(){
        		_this_is_open = $(this).attr('data-is_open');
        		if(_this_is_open == 0){
        			$(this).attr('data-is_open', '1');
			$.ajax({  
			        type:'post',
			        url:'/api/alert/get_alert_list',
			        success: function(data){
			        		$('#gnb_login_box .cnt').hide();
			        		//console.log(data);
			        		var html = '<div class="notice_box_arrow"></div>';
			        		$.each(data.response_data, function(key, val) {
			        			if(val.html_desc && val.img != null){
									if(val.alert_type == '2'){
										var al_link = '/ko/mypage/et_2211170448280168756001668671308?type=clipboard&ci_srl='+val.rel_srl;
									}else{
										var al_link = '';
									}
			        				html += '<div class="notice_item" data-link="'+al_link+'">'+cutStr(val.html_desc,85)+'<div class="notice_time">'+val.regdate+'</div></div>';
			        			}
								if(key == 4){
									return false;
								}
			        		});
			        		html += '<div class="notice_more_box">더보기</div>';
			        		$('#notice_content_box').html(html);
			        		$('#notice_content_box').slideDown();

			        }
		      }); 
		}else{
			$('#notice_content_box').slideUp(300);
			$(this).attr('data-is_open', '0');
		}
        });
$('#notice_content_box').on('click','.notice_item, .notice_more_box',function(){
	if($(this).attr('data-link') == '' || $(this).attr('data-link') == null){
		location.href="/ko/notice";
	}else{
		location.href=$(this).attr('data-link');
	}
});

$(document).mouseup(function (e)
{
    var container = $(".et_slide");
    
    var _parent_sel_box = $(e.target).attr('id');


    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0 && _parent_sel_box != 'gnb_notice' && _parent_sel_box != 'gnb_notice_img' && _parent_sel_box != 'hotel_type_filter' && _parent_sel_box != 'hotel_amenity_filter' && _parent_sel_box != 'ht_filter_rank' && _parent_sel_box != 'ht_filter_type' && _parent_sel_box != 'map_tag_select_box' && _parent_sel_box != 'sky_filter_airlines' && _parent_sel_box != 'hotel_rank_filter' ) // ... nor a descendant of the container
    {
        container.slideUp(300);
    
    $('.et_slide_parent').removeClass('on');
    $('.et_slide_parent').attr('data-is_open','0');


    }
});           
</script>
<script src="/res/js/jquery.easypiechart.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="/jslang?lang=ko&amp;lang_file=map"></script>
<script type="text/javascript" src="/res/js/jquery.curved.line-0.0.2.js"></script>



<div class="fl" left_full_box></div>
	<div class="fl" id="place_full_box" style="width:256px" data="0">
	<div class="title_box">
		<div class="sigungu_list_title" style="display: block;">
			<div class="fl sigungu_title">구/군별로 선택</div>
			<div class="clear"></div>
		</div>
		<div id="city_list_title" style="diplay:none;">
			<div class="back_btn fl" data-go_state="0"></div>
			<div class="fl cu_title" style="width:230px; padding-left:10px; 
			 font-size:15px;">구중에 하나(대만)</div>
			<div class="clear"></div>
		</div>
	</div>
	
	<div id="search_box" style="width:100%; height:51px; border-bottom:solid #d6d6d6 1px;"></div>
	<div id="sigungu_list_box" style="height:633px; display:block;">
		<div class="item" data-no="0" data="100" data-latlng="35.207617780933,128.97929472389"
		data-val="강서구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">강서구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="0" data="100" data-latlng="35.207617780933,128.97929472389"
		data-val="강서구">
		<div class="img_box fl">
			<img src="../images/광안대교.png">
		</div>
		<div class="info_box fl">
			<div class="info_title">강서구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="1" data="101" data-latlng="35.257906,129.091266"
		data-val="금정구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">금정구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="2" data="102" data-latlng="35.244573050646,129.2221417458"
		data-val="기장군">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">기장군</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="3" data="103" data-latlng="35.1795543,129.0756416"
		data-val="남구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">남구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="4" data="104" data-latlng="35.207617780933,128.97929472389"
		data-val="동구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">동구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="5" data="105" data-latlng="35.207617780933,128.97929472389"
		data-val="동래구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">동래구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="6" data="106" data-latlng="35.207617780933,128.97929472389"
		data-val="부산진구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">부산진구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="7" data="107" data-latlng="35.207617780933,128.97929472389"
		data-val="북구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">북구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="8" data="108" data-latlng="35.207617780933,128.97929472389"
		data-val="사상구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">사상구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="9" data="109" data-latlng="35.207617780933,128.97929472389"
		data-val="사하구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">사하구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="10" data="110" data-latlng="35.207617780933,128.97929472389"
		data-val="서구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">서구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="11" data="111" data-latlng="35.207617780933,128.97929472389"
		data-val="수영구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">수영구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="12" data="112" data-latlng="35.207617780933,128.97929472389"
		data-val="연제구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">연제구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="13" data="113" data-latlng="35.207617780933,128.97929472389"
		data-val="영도구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">영도구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="14" data="114" data-latlng="35.207617780933,128.97929472389"
		data-val="중구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">중구</div>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="item" data-no="15" data="115" data-latlng="35.207617780933,128.97929472389"
		data-val="해운대구">
		<div class="img_box fl">
			<img src="">
		</div>
		<div class="info_box fl">
			<div class="info_title">해운대구</div>
		</div>
		<div class="clear"></div>
		</div>
	</div>
	
	<div id="umd_list_box" style="height:633px; display:block;">
	
		<div class="item" data-no="0" data="1000" data-umd_name="강동동"
		data-lat="" data-lng="">
		<div class="img_box fl">
			<img src="../">
		</div>
		<div class="info_box fl">
			<div class="info_title">강동동</div>
		</div>
		<div class="spot_to_inspot">
			<img src="../">
		</div>
		<div class="clear"></div>
		</div>		
		
	
	</div>
		
		
		
		
	</div>
	
	
	
	
</body>
</html>



