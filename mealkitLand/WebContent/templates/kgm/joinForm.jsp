<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="../../static/css/kgm/joinForm.css">
<link rel="stylesheet" href="../../static/css/kgm/info.css">
<link rel="stylesheet" href="../../static/css/kgm/member.css">
</head>

<body>
	<div class="wrap">
		<%@include file="/templates/kgm/header.jsp"%>
		<section id="contents" class=container>
        <form id="join-form" name="join-form" action="${pageContext.request.contextPath}/joinOk.user" method="post">
            <div class="join-container join-container2" style="display: block;">
                <div class="join-area">
                    <h2 class="join-title">회원가입</h2>
                    <fieldset class="form-group-area">
                        <legend>회원가입 항목 작성</legend>

                        <div class="info form-head" style="">
                            <div class="form-group info-container">
                                <label for="name" class="form-label">이름<i class="es2"></i></label>
                                <div class="input-group type-lg w-full">
                                    <span>
                                        <input type="text" id="name" name="userName" autocomplete="off"
                                            placeholder="영문 혹은 한글, 2~20자" class="input-text" maxlength="50">
                                        <img width="16px">
                                    </span>
                                    <p class="help"></p>
                                </div>
                            </div>
                        </div>
                        <div class="info form-head">
                            <div class="form-group info-container">
                                <label for="birth" class="form-label">생년월일<i class="es2"></i></label>
                                <div class="input-group type-lg w-full">
                                    <span>
                                        <input type="text" id="birth" name="userBirth" autocomplete="off"
                                            class="input-text" placeholder="예) 19990101">
                                        <img width="16px">
                                    </span>
                                    <p class="help"></p>
                                </div>
                            </div>
                        </div>
                        <div class="info form-head">
                            <div class="form-group info-container">
                                <label for="phone" class="form-label">휴대폰 번호<i class="es2"></i></label>
                                <div class="input-group type-lg w-full">
                                    <span>
                                        <input type="text" id="phone" name="userPhone" autocomplete="off"
                                            class="input-text" placeholder="예) 01000000000">
                                        <img width="16px">
                                    </span>
                                    <p class="help"></p>
                                </div>
                            </div>
                        </div>

                        <div class="join">
                            <div class="join-form">
                                <div class="form-group info-container info-container-first">
                                    <label for="id" class="form-label">아이디<i class="es2"></i></label>
                                    <div class="input-group type-lg w-full">
                                        <span>
                                            <input type="text" id="id" name="userIdentification" autocomplete="off"
                                                class="input-text" placeholder="영문 혹은 영문+숫자, 4~20자">
                                            <img width="16px">
                                        </span>
                                        <p class="help"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="join-form">
                                <div class="form-group info-container">
                                    <span>
                                        <label for="password" class="form-label">비밀번호<i class="es2"></i></label>
                                        <div class="input-group type-lg w-full">
                                            <div class="password">
                                                <input type="password" id="password" name="userPassword"
                                                    class="input-text" placeholder="영어, 숫자, 특수문자 중 2가지 이상 10~20자">
                                                <img width="16px">
                                                <p class="help"></p>
                                            </div>
                                        </div>
                                        <div class="password password-check input-group type-lg w-full">
                                            <input type="password" id="password-check" placeholder="비밀번호 재입력"
                                                class="input-text">
                                            <img width="16px">
                                            <p class="help"></p>
                                        </div>
                                    </span>
                                </div>
                            </div>
                            <div class="join-form">
                                <div class="form-group info-container">
                                    <label class="form-label">이메일<i class="es2"></i></label>
                                    <span>
                                        <div class="email-wrap">
                                            <div class="email-first">
                                                <input type="text" autocomplete="off" placeholder="이메일 앞자리" id="email-f" class="input-text">
                                                <img width="16px">
                                            </div>
                                            <span id="seperator">@</span>
                                            <div class="email-last">
                                                <input type="text" autocomplete="off" placeholder="이메일 뒷자리" id="email-l" class="input-text">
                                                <img width="16px">
                                            </div>
                                            <input type="hidden" name="userEmail">
                                        </div>
                                    </span>
                                    <p class="help"></p>
                                    <div class="email-select-wrap">
                                        <select class="email">
                                            <option value="">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="hotmail.com">hotmail.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                        </select>
                                        <img src="${pageContext.request.contextPath}/static/image/select.png"width="16px" style="display: inline-block;">
                                    </div>
                                    <p class="help"></p>
                                    <h6 class="help">
                                        <img src="${pageContext.request.contextPath}/static/image/warn.png" id="warn"
                                            width="16px" height="16px">
                                        이메일로 비밀번호 변경 링크 등이 발송됩니다. 개인정보 보호를 위해 정확한 메일 정보를 입력해주세요.
                                    </h6>

                                    <input type="text" name="userAddress" id="sample5_address" readonly placeholder="주소">
                                    <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
									<div id="map" style="width:300px;height:300px;margin-top:10px;display:none">
									</div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-bottom-area">
                            <button type="submit" id="member-join-submit-btn" action="loginForm.jsp" class="btn-basic-lg2 btn-dim next">
                            <span>회원가입</span></button>
                        </div>
                    </fieldset>
                    <!-- join-area -->
                </div>

                <!-- join-container -->
            </div>
            <!-- div container -->
        </form>
    </section>
		<%@include file="/templates/kgm/footer.jsp"%>
	</div>
</body>

<!-- 주소 다음 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ae9238acd69a427adfa0c96ebce9e94d&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                if(document.getElementById("sample5_address").value){
                	return;
                }
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>
 <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script>
    	
    	
        let contextPath = "${pageContext.request.contextPath}"
    </script>
   <script src="${pageContext.request.contextPath}/static/js/kgm/check.js"></script>
<script src="${pageContext.request.contextPath}/static/js/kgm/join.js"></script>
<script src="${pageContext.request.contextPath}/static/js/kgm/modal.js"></script>
</html>
