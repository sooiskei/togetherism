<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 생성 폼</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c&libraries=services,clusterer,drawing"></script>

</head>
<body>
	<form name="event_form"
		action="<%=request.getContextPath()%>/event_create.do" method="post"
		enctype="multipart/form-data">
		<input type="hidden" value="${club_num}" name="club_num">  <!-- Merge 이후 넘어올 값 -->
		<input type="hidden" value="${club_host_email}" name="club_host_email"> <!-- Merge 이후 Controller 에서 구해서 넘어올 값 -->
		<input type="hidden" id="event_spot_lat" name="event_spot_lat" value="">
		<input type="hidden" id="event_spot_long" name="event_spot_long" value="">

		<!-- 맵이 표시될 위치 -->
		<div id="map" style="width: 500px; height: 400px;"></div>
		<p>
			<em>지도를 클릭해주세요!</em>
		</p>
		<div id="clickLatlng"></div>
		
		<!-- 맵 작업 코드 -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/event_spot_map.js"></script>
		<table>
			<caption>이벤트 생성 폼</caption>
			<tr>
				<td>이벤트</td>
				<td><input type="text" name="event_title"></td>
			</tr>
			<tr>
				<td>이벤트 날짜 및 시간</td>
				<td><input type="date" name="event_date_date"></td>
				<td><input type="time" name="event_date_time"></td>
			</tr>

			<td>이벤트 장소 위도 경도</td>
			<td>
				<div id="event_spot_lat0"></div>
				<div id="event_spot_long0"></div>
			</td>

			<td>이벤트 지역</td>
			<select name="event_region">
			<option value="수도권">수도권</option>
			<option value="경상권">경상권</option>
			</select>
			<tr>
				<td>이벤트 설명</td>
				<td><textarea name="event_info"></textarea></td>
			</tr>
			<tr>
				<td>이벤트 첨부파일 및 사진</td>
				<td><input type="file" name="event_file0"></td>
			</tr>

			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>

	</form>
</body>
</html>