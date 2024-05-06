<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
  
   
   <div style="display: flex; justify-content: space-between;">
    	
    	<div style="padding-left: 2%;">
    		<h1>뱃사공</h1>
    	</div>
    	
    	
    	<div style="padding-right: 2%; padding-top: 40px;">
   			<button type="button" style="background: none" onClick="location.href='/api-gateway/user/login'"> 로그인 </button> / <button type="button" style="background: none" onClick="location.href='api-gateway/logout'"> 회원가입 </button> 
    	</div>
   </div>
   
   <div id="map" style="width:100vw; height:100vh;"></div>
   
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dd5c3cd614d8ab7203fa738b1f706844"></script>
   <script>
	   var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	   var options = { //지도를 생성할 때 필요한 기본 옵션
	   	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	   	level: 3 //지도의 레벨(확대, 축소 정도)
	   };
	
	   var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
   </script>
   
   
</body>
</html>
