<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제/취소내역</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage4.css">
       <style>


 .no-data-type1{
 	display:flex;
	justify-content: center;
	align-items: center;
 }
 
 .tbl th, .tbl td{
 border: 1px solid rgba(204, 204, 204, 0.2);
     width: 200px;
 }
 
 .tbl{
 	
 	margin-top: -20px;
 }
   	
   </style>
</head>
<body>
    <div class="wrap" style>
    <%@include file = "/templates/kgm/header.jsp" %>
    <section id="contents" class="container">
        <div class="content-wrap frame-sm-mypage">
            <div class="frame-sm">
                <div class="frame-left">
                    <div class="aside-menu-wrap">
                        <nav class="aside-menu">
                            <ul class="menu-list">
                                <li>
                                    <a class="menu">내 정보관리</a>
                                    <ul class="depth2">
                                        <li>
                                            <a>회원정보 수정</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="menu">메뉴</a>
                                    <ul class="depth2">
                                        <li class>
                                          <a href="${pageContext.request.contextPath}/subscribeOk.subscribe">나의 구독내역</a>
                                        </li>
                                        <li class>
                                            <a>배송 조회</a>
                                        </li>
                                        <li class>
                                            <a>결제/취소내역</a>
                                        </li>
                                        <li class>
                                            <a>장바구니</a>
                                        </li>
                                        <li class>
                                            <a>내 게시글 수정/삭제</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="frame-right">
                    <div class="frame-cnt-inner">
                        <form id="myPageOrderList">
                            <div class="menu-title-area">
                                <h3 class="title-menu">결제/취소내역</h3>
                            </div>
                            <div class="search-box ui-toggle on" style="margin-top: 10px">
                                <div class="search-head">
                                    <p class="searn-period">조회기간 2023.03.19 ~ 2023.04.19(최근 1개월)</p>
                                </div>
                                <div class="search-detail ui-toggle-content">
                                    <fieldset>
                                        <legend>상세 검색</legend>
                                        <ul class="radio-list">
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-2weeks" class="radio-btn-type2" name="mypage-order-search-radio" value="2WEEKS">
                                                    <label for="mypage-order-search-radio-2weeks">2주일</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-1month" class="radio-btn-type2" name="mypage-order-search-radio" value="1MONTH" checked="">
                                                    <label for="mypage-order-search-radio-1month">1개월</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-3months" class="radio-btn-type2" name="mypage-order-search-radio" value="3MONTHS">
                                                    <label for="mypage-order-search-radio-3months">3개월</label>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-6months" class="radio-btn-type2" name="mypage-order-search-radio" value="6MONTHS">
                                                    <label for="mypage-order-search-radio-6months">6개월</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-12months" class="radio-btn-type2" name="mypage-order-search-radio" value="12MONTHS">
                                                    <label for="mypage-order-search-radio-12months">12개월</label>
                                                </div>
                                            </li>
											<li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-24months" class="radio-btn-type2" name="mypage-order-search-radio" value="24MONTHS">
                                                    <label for="mypage-order-search-radio-24months">24개월</label>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="period-setting ui-toggle-sub">
                                            <div class="input-group type-sm">
                                                <div class="input-group-form">
                                                    <div class="custom-checkbox">
                                                        <input type="checkbox" id="dlvTypeAll" class="checkbox dlvTypeAll" name="dlvTypeAll" value="N" checked="">
                                                        <label for="dlvTypeAll">
                                                            전체
                                                        </label>
                                                    </div>
                                                    <div class="custom-checkbox">
                                                        <input type="checkbox" id="dlvNrm" class="checkbox dlvType" name="dlvNrm" value="N" checked="">
                                                        <label for="dlvNrm">
                                                            일반배송
                                                        </label>
                                                    </div>
                                                    <div class="custom-checkbox">
                                                        <input type="checkbox" id="dlvRtn" class="checkbox dlvType" name="dlvRtn" value="N" checked="">
                                                        <label for="dlvRtn">
                                                            정기배송
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="input-group-form text-right">
                                                    <div class="input-group-btn dis-inb">
                                                        <a href="javascript:;" onclick="onSubmitMyPageOrderSearch();"
                                                        class="btn-form btn-black">
                                                        <span>조회하기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                         </form>
                        <div class="no-data-type1">
                            	<table class="tbl">
                            		<tr><th>결제상품</th> <th>결제금액</th> <th>결제날짜</th></tr>
                            		<tr><td></td> <td></td> <td></td></tr>
                            	</table>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@include file = "/templates/kgm/footer.jsp" %>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/hdh/mypage4.js"></script>
</html>