<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<title>1:1 문의하기</title>
<link rel="stylesheet" href="../../static/css/jyk/boardWrite.css">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jyk/boardWrite.css">
</head>
<body>
	<%@include file="/templates/kgm/header.jsp"%>
    <section id="contents" class="container">
        <div class="content-wrap frame-sm">
            <div class="page-title-area">
                <h2 class="title-page">
                    <a href="#">고객센터</a>
                </h2>
            </div>


            <div class="frame-wrap">
                <div class="frame-left">
                    <div class="aside-menu-wrap">
                        <nav class="aside-menu">
                            <ul class="menu-list">
                                <li>
                                    <a href="" class="menu">공지사항</a>
                                </li>

                                <li>
                                    <a href="${pageContext.request.contextPath}/templates/jyk/boardMain.jsp" class="menu">자주묻는질문</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/templates/jyk/boardWrite.jsp" class="menu" onclick="checkLogin();">1:1문의하기</a>
                                </li>
                            </ul>
                        </nav>
                        <div class="aside-guide-box">
                            <dl>
                                <dt>밀키트랜드 고객센터</dt>
                                <dd class="phone-num">02-6405-8088</dd>
                                <dd>
                                    평일
                                    <span class="text-num-md">09:00 ~ 18:00</span>
                                </dd>
                                <dd>주말, 공휴일 휴무</dd>
                            </dl>
                            <!-- <dl></dl> -->
                        </div>
                    </div>
                </div>

                <!-- 상품검색 모달 -->
                <form id="popUpFrm" name="popUpFrm" action="/mypage/userCounsel/regCouncel" method="post"
                    data-gtm-form-interact-id="0">
                    <div id="orderProductPopUp">
                        <title></title>

                        <!-- <input type="hidden" name="returnUrl" value="/mypage/userCounsel/selectCounselOrderProductPop">
                    <input type="hidden" name="returnParam" value="siteCd=undefined&amp;">
                    <input type="hidden" name="nowPageNo" value="">
                    <input type="hidden" name="siteCd" value="">
                    <input type="hidden" name="couponCd" value="">
                    <input type="hidden" name="callbackFunction" value=""> -->

                        <div class="layer-wrap" id="popup-sample01">
                            <div class="layer-pop order-search-pop">
                                <div class="layer-inner">
                                    <div class="layer-head">
                                        <h4 class="layer-pop-title">주문상품 검색</h4>
                                    </div>

                                    <div class="layer-content">

                                        <div class="search-box ui-toggle">
                                            <div class="search-head">
                                                <p class="searn-period" id="period">조회기간 : 2022.04.24 ~ 2023.04.18 (최근
                                                    1개월)</p>
                                                <button type="button" class="btn-link-txt2 ui-toggle-btn">
                                                    <span>조회설정</span>
                                                    <i class="ico-arr-toggle"></i>
                                                </button>
                                            </div>
                                            <!--// search-head -->
                                            <div class="search-detail ui-toggle-content hide">
                                                <fieldset>
                                                    <legend>상세 검색</legend>
                                                    <ul class="radio-list">
                                                        <li>
                                                            <div class="custom-radio">
                                                                <input type="radio" id="radio-item100"
                                                                    class="radio-btn-type2 btn_search"
                                                                    name="radio-item100" value="14"><label
                                                                    for="radio-item100">2주일</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="custom-radio">
                                                                <input type="radio" id="radio-item101"
                                                                    class="radio-btn-type2 btn_search"
                                                                    name="radio-item100" value="30"
                                                                    data-gtm-form-interact-field-id="0"><label
                                                                    for="radio-item101">1개월</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="custom-radio">
                                                                <input type="radio" id="radio-item102"
                                                                    class="radio-btn-type2 btn_search"
                                                                    name="radio-item100" value="90"><label
                                                                    for="radio-item102">3개월</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="custom-radio">
                                                                <input type="radio" id="radio-item103"
                                                                    class="radio-btn-type2 btn_search"
                                                                    name="radio-item100" value="180"><label
                                                                    for="radio-item103">6개월</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="custom-radio">
                                                                <input type="radio" id="radio-item104"
                                                                    class="radio-btn-type2 btn_search"
                                                                    name="radio-item100" value="365"><label
                                                                    for="radio-item104">12개월</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="custom-radio">
                                                                <input type="radio" id="radio-item105"
                                                                    class="radio-btn-type2 date-setting"
                                                                    name="radio-item100"><label
                                                                    for="radio-item105">기간설정</label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <div id="testDiv" class="period-setting hide ui-toggle-sub">
                                                        <div class="input-group type-sm inline-type">
                                                            <div class="input-group-form">
                                                                
                                                                <!--// select-box-sm -->
                                                            </div>
                                                            <!--// input-group-form -->
                                                            <div class="input-group-btn">
                                                                <a href="#" class="btn-form btn-navy btn_search"><i
                                                                        class="ico-btn-search2"></i><span>조회하기</span></a>
                                                            </div>
                                                            <div class="input-group-btn">
                                                                <button type="button" class="btn-link-txt5 btn_init"><i
                                                                        class="ico-btn-refresh"></i><span>초기화</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--// period-setting -->
                                                </fieldset>
                                            </div>
                                            <!--// search-detail-->
                                        </div>
                                        <!--// search-box -->


                                        <div id="productPop">
                                            <div class="scroll-area ui-custom-scroll ui-height-auto mCustomScrollbar _mCS_2"
                                                style="max-height: 307.4px;">
                                                <div id="mCSB_2"
                                                    class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
                                                    tabindex="0" style="max-height: 307.4px;">
                                                    <div id="mCSB_2_container" class="mCSB_container"
                                                        style="position:relative; top:0; left:0;" dir="ltr">
                                                        <div class="board-list">
                                                            <ul class="select-form-list">
                                                                <div class="no-data">
                                                                    <p class="message">내역이 없습니다.</p>
                                                                </div>
                                                            </ul>
                                                        </div>
                                                        <!--// board-list -->
                                                    </div>
                                                    <div id="mCSB_2_scrollbar_vertical"
                                                        class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical"
                                                        style="display: block;">
                                                        <div class="mCSB_draggerContainer">
                                                            <div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
                                                                style="position: absolute; min-height: 0px; display: block; height: 221px; max-height: 297.4px; top: 0px;">
                                                                <div class="mCSB_dragger_bar" style="line-height: 0px;">
                                                                </div>
                                                            </div>
                                                            <div class="mCSB_draggerRail"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- 내역이 없을 경우 -->
                                        <!-- <div class="no-data">
                                        <p class="message">내역이 없습니다.</p>
                                    </div> -->
                                        <!--// 내역이 없을 경우 -->

                                    </div>
                                    <!--// layer-content -->

                                    <div class="layer-bottom type-shadow">
                                        <div class="btn-area">
                                            <button type="button" class="btn-basic-md btn-grey3" onclick="fnClose()">
                                                <span>취소</span>
                                            </button>
                                            <button type="button" class="btn-basic-md btn-black" onclick="goChoose()">
                                                <span>선택</span>
                                            </button>
                                        </div>
                                    </div>
                                    <!--// layer-bottom -->
                                    <button type="button" class="btn-x-md2 ui-close-pop" title="닫기" onclick="fnClose()">
                                        <i class="ico-x-black"></i>
                                        <span class="blind">닫기</span>
                                    </button>
                                </div>
                                <!--// layer-inner -->
                            </div>
                            <!--// layer-pop  -->
                        </div>
                        <!--// layer-pop-wrap #main-event -->
                        <!--// layer-pop-wrap #popup-sample-01 -->
                    </div>
                    <div>
                        <input type="hidden" name="_csrf" value="fdd4d401-1185-4d62-ac02-80feff2402ef">
                    </div>
                </form>


                <!-- 메인작성 -->
                <form action="" id="counselRegFrm" name="counselRegFrm" method="post">
                    <div class="frame-right">
                        <div class="frame-cnt-inner">
                            <div class="menu-title-area">
                                <h3 class="title-menu">1:1 문의하기</h3>
                            </div>
                            <div class="board-form type2">
                                <table>
                                    <caption>내용 작성</caption>
                                    <colgroup>
                                        <col style="width: 180px;">
                                        <col style="width: auto;">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="text-left" scope="row">
                                                <div class="in-tb">
                                                    문의 유형
                                                    <em class="es">
                                                        <span class="blind">필수입력</span>

                                                    </em>
                                                </div>
                                            </th>
                                            <td class="text-left">
                                                <div class="input-group w-full">
                                                    <div class="input-group-form">
                                                        <div class="ui-select select-box w150" id="vCounselType"
                                                            data-value>
                                                            <a href="#none" title class="select-value placeholder">
                                                                <span>유형선택</span>

                                                            </a>
                                                            <div class="select-list">
                                                                <ul>
                                                                    <li data-name="100" data-value="100">
                                                                        <a href="#none" class="counselType">
                                                                            <span>주문/결제</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="200" data-value="200">
                                                                        <a href="#none" class="counselType">
                                                                            <span>상품관련</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="300" data-value="300">
                                                                        <a href="#none" class="counselType">
                                                                            <span>배송관련</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="999" data-value="999">
                                                                        <a href="#none" class="counselType">
                                                                            <span>기타</span>
                                                                        </a>
                                                                    </li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <input type="text" name="vQuestionTitle" id="vQuestionTitle" title
                                                        class="input-text" placeholder="제목을 입력해주세요" value>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="text-left" scope="row">
                                                <div class="in-tb">주문상품</div>
                                            </th>
                                            <td class="text-left">
                                                <div class="input-group w-full">
                                                    <input type="text" id="item-1" class="input-text" disabled
                                                        placeholder="문의상품을 선택해주세요">
                                                    <span class="input-group-btn">
                                                        <button type="button" id="btn_orderProduct"
                                                            class="btn-form btn-ex-white w150 btn_orderProduct"
                                                            onclick="fnOpen()">
                                                            <span>주문상품 검색</span>
                                                        </button>
                                                    </span>
                                                </div>
                                                <div id="mainPrd"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="text-left" scope="row">
                                                <div class="in-tb">문의내용
                                                    <em class="es">
                                                        <span class="blind">필수입력</span>
                                                    </em>
                                                </div>
                                            </th>
                                            <td class="text-left">
                                                <div class="textarea-box-count h230">
                                                    <textarea name="vQuestionCont" id="vQuestionCont"
                                                        placeholder="문의내용을 입력하세요"></textarea>
                                                    <div class="txt-count">
                                                        <span id="counter">0</span>
                                                        /
                                                        <span id="counter">1,000</span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <!-- 첨부파일영역-->
                                        <tr></tr>
                                        <!-- 첨부파일영역 -->
                                    </tbody>
                                </table>
                            </div>


                            <!-- board-form -->
                            <div class="btn-bottom-area">
                                <button type="button" class="btn-basic-lg2 btn-grey3"
                                    onclick="javascript:history.back();">
                                    <span>취소하기</span>
                                </button>
                                <button type="button" class="btn-basic-lg2 btn-primary" onclick="goSave();">
                                    <span>문의하기</span>
                                </button>
                            </div>

                        </div>

                    </div>
                </form>
            </div>
        </div>

        </div>
    </section>
    <%@include file="/templates/kgm/footer.jsp"%>
</body>
<script type="text/javascript" src="../../static/js/boardMain.js"></script>
</html>