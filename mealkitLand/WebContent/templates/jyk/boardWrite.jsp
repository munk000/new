<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="../../static/css/jyk/boardWrite.css">
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
                                    <a href="" class="menu">이용안내</a>
                                </li>
                                <li>
                                    <a href="" class="menu">자주묻는질문</a>
                                </li>
                                <li>
                                    <a href="" class="menu" onclick="checkLogin();">1:1문의하기</a>
                                </li>
                                <li>
                                    <a href="" class="menu">고객의소리</a>
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
                                                                <div class="select-box-sm ui-select" id="fromCurYear"
                                                                    data-value="2023">
                                                                    <a href="#" title="연도 선택"
                                                                        class="select-value"><span>2023</span></a>
                                                                    <div class="select-list">
                                                                        <ul>
                                                                            <li data-name="2009" data-value="2009"
                                                                                class=""><a
                                                                                    href="#none"><span>2009</span></a>
                                                                            </li>
                                                                            <li data-name="2008" data-value="2008"
                                                                                class=""><a
                                                                                    href="#none"><span>2008</span></a>
                                                                            </li>
                                                                            <li data-name="2007" data-value="2007"
                                                                                class=""><a
                                                                                    href="#none"><span>2007</span></a>
                                                                            </li>
                                                                            <li data-name="2006" data-value="2006"
                                                                                class=""><a
                                                                                    href="#none"><span>2006</span></a>
                                                                            </li>
                                                                            <li data-name="2005" data-value="2005"
                                                                                class=""><a
                                                                                    href="#none"><span>2005</span></a>
                                                                            </li>
                                                                            <li data-name="2004" data-value="2004"
                                                                                class=""><a
                                                                                    href="#none"><span>2004</span></a>
                                                                            </li>
                                                                            <li data-name="2003" data-value="2003"
                                                                                class=""><a
                                                                                    href="#none"><span>2003</span></a>
                                                                            </li>
                                                                            <li data-name="2002" data-value="2002"
                                                                                class=""><a
                                                                                    href="#none"><span>2002</span></a>
                                                                            </li>
                                                                            <li data-name="2001" data-value="2001"
                                                                                class=""><a
                                                                                    href="#none"><span>2001</span></a>
                                                                            </li>
                                                                            <li data-name="2000" data-value="2000"
                                                                                class=""><a
                                                                                    href="#none"><span>2000</span></a>
                                                                            </li>
                                                                            <li data-name="1999" data-value="1999"
                                                                                class=""><a
                                                                                    href="#none"><span>1999</span></a>
                                                                            </li>
                                                                            <li data-name="1998" data-value="1998"
                                                                                class=""><a
                                                                                    href="#none"><span>1998</span></a>
                                                                            </li>
                                                                            <li data-name="1997" data-value="1997"
                                                                                class=""><a
                                                                                    href="#none"><span>1997</span></a>
                                                                            </li>
                                                                            <li data-name="1996" data-value="1996"
                                                                                class=""><a
                                                                                    href="#none"><span>1996</span></a>
                                                                            </li>
                                                                            <li data-name="1995" data-value="1995"
                                                                                class=""><a
                                                                                    href="#none"><span>1995</span></a>
                                                                            </li>
                                                                            <li data-name="1994" data-value="1994"
                                                                                class=""><a
                                                                                    href="#none"><span>1994</span></a>
                                                                            </li>
                                                                            <li data-name="1993" data-value="1993"
                                                                                class=""><a
                                                                                    href="#none"><span>1993</span></a>
                                                                            </li>
                                                                            <li data-name="1992" data-value="1992"
                                                                                class=""><a
                                                                                    href="#none"><span>1992</span></a>
                                                                            </li>
                                                                            <li data-name="1991" data-value="1991"
                                                                                class=""><a
                                                                                    href="#none"><span>1991</span></a>
                                                                            </li>
                                                                            <li data-name="1990" data-value="1990"
                                                                                class=""><a
                                                                                    href="#none"><span>1990</span></a>
                                                                            </li>
                                                                            <li data-name="1989" data-value="1989"
                                                                                class=""><a
                                                                                    href="#none"><span>1989</span></a>
                                                                            </li>
                                                                            <li data-name="1988" data-value="1988"
                                                                                class=""><a
                                                                                    href="#none"><span>1988</span></a>
                                                                            </li>
                                                                            <li data-name="1987" data-value="1987"
                                                                                class=""><a
                                                                                    href="#none"><span>1987</span></a>
                                                                            </li>
                                                                            <li data-name="1986" data-value="1986"
                                                                                class=""><a
                                                                                    href="#none"><span>1986</span></a>
                                                                            </li>
                                                                            <li data-name="1985" data-value="1985"
                                                                                class=""><a
                                                                                    href="#none"><span>1985</span></a>
                                                                            </li>
                                                                            <li data-name="1984" data-value="1984"
                                                                                class=""><a
                                                                                    href="#none"><span>1984</span></a>
                                                                            </li>
                                                                            <li data-name="1983" data-value="1983"
                                                                                class=""><a
                                                                                    href="#none"><span>1983</span></a>
                                                                            </li>
                                                                            <li data-name="1982" data-value="1982"
                                                                                class=""><a
                                                                                    href="#none"><span>1982</span></a>
                                                                            </li>
                                                                            <li data-name="1981" data-value="1981"
                                                                                class=""><a
                                                                                    href="#none"><span>1981</span></a>
                                                                            </li>
                                                                            <li data-name="1980" data-value="1980"
                                                                                class=""><a
                                                                                    href="#none"><span>1980</span></a>
                                                                            </li>
                                                                            <li data-name="1979" data-value="1979"
                                                                                class=""><a
                                                                                    href="#none"><span>1979</span></a>
                                                                            </li>
                                                                            <li data-name="1978" data-value="1978"
                                                                                class=""><a
                                                                                    href="#none"><span>1978</span></a>
                                                                            </li>
                                                                            <li data-name="1977" data-value="1977"
                                                                                class=""><a
                                                                                    href="#none"><span>1977</span></a>
                                                                            </li>
                                                                            <li data-name="1976" data-value="1976"
                                                                                class=""><a
                                                                                    href="#none"><span>1976</span></a>
                                                                            </li>
                                                                            <li data-name="1975" data-value="1975"
                                                                                class=""><a
                                                                                    href="#none"><span>1975</span></a>
                                                                            </li>
                                                                            <li data-name="1974" data-value="1974"
                                                                                class=""><a
                                                                                    href="#none"><span>1974</span></a>
                                                                            </li>
                                                                            <li data-name="1973" data-value="1973"
                                                                                class=""><a
                                                                                    href="#none"><span>1973</span></a>
                                                                            </li>
                                                                            <li data-name="1972" data-value="1972"
                                                                                class=""><a
                                                                                    href="#none"><span>1972</span></a>
                                                                            </li>
                                                                            <li data-name="1971" data-value="1971"
                                                                                class=""><a
                                                                                    href="#none"><span>1971</span></a>
                                                                            </li>
                                                                            <li data-name="1970" data-value="1970"
                                                                                class=""><a
                                                                                    href="#none"><span>1970</span></a>
                                                                            </li>
                                                                            <li data-name="1969" data-value="1969"
                                                                                class=""><a
                                                                                    href="#none"><span>1969</span></a>
                                                                            </li>
                                                                            <li data-name="1968" data-value="1968"
                                                                                class=""><a
                                                                                    href="#none"><span>1968</span></a>
                                                                            </li>
                                                                            <li data-name="1967" data-value="1967"
                                                                                class=""><a
                                                                                    href="#none"><span>1967</span></a>
                                                                            </li>
                                                                            <li data-name="1966" data-value="1966"
                                                                                class=""><a
                                                                                    href="#none"><span>1966</span></a>
                                                                            </li>
                                                                            <li data-name="1965" data-value="1965"
                                                                                class=""><a
                                                                                    href="#none"><span>1965</span></a>
                                                                            </li>
                                                                            <li data-name="1964" data-value="1964"
                                                                                class=""><a
                                                                                    href="#none"><span>1964</span></a>
                                                                            </li>
                                                                            <li data-name="1963" data-value="1963"
                                                                                class=""><a
                                                                                    href="#none"><span>1963</span></a>
                                                                            </li>
                                                                            <li data-name="1962" data-value="1962"
                                                                                class=""><a
                                                                                    href="#none"><span>1962</span></a>
                                                                            </li>
                                                                            <li data-name="1961" data-value="1961"
                                                                                class=""><a
                                                                                    href="#none"><span>1961</span></a>
                                                                            </li>
                                                                            <li data-name="1960" data-value="1960"
                                                                                class=""><a
                                                                                    href="#none"><span>1960</span></a>
                                                                            </li>
                                                                            <li data-name="1959" data-value="1959"
                                                                                class=""><a
                                                                                    href="#none"><span>1959</span></a>
                                                                            </li>
                                                                            <li data-name="1958" data-value="1958"
                                                                                class=""><a
                                                                                    href="#none"><span>1958</span></a>
                                                                            </li>
                                                                            <li data-name="1957" data-value="1957"
                                                                                class=""><a
                                                                                    href="#none"><span>1957</span></a>
                                                                            </li>
                                                                            <li data-name="1956" data-value="1956"
                                                                                class=""><a
                                                                                    href="#none"><span>1956</span></a>
                                                                            </li>
                                                                            <li data-name="1955" data-value="1955"
                                                                                class=""><a
                                                                                    href="#none"><span>1955</span></a>
                                                                            </li>
                                                                            <li data-name="1954" data-value="1954"
                                                                                class=""><a
                                                                                    href="#none"><span>1954</span></a>
                                                                            </li>
                                                                            <li data-name="1953" data-value="1953"
                                                                                class=""><a
                                                                                    href="#none"><span>1953</span></a>
                                                                            </li>
                                                                            <li data-name="1952" data-value="1952"
                                                                                class=""><a
                                                                                    href="#none"><span>1952</span></a>
                                                                            </li>
                                                                            <li data-name="1951" data-value="1951"
                                                                                class=""><a
                                                                                    href="#none"><span>1951</span></a>
                                                                            </li>
                                                                            <li data-name="1950" data-value="1950"
                                                                                class=""><a
                                                                                    href="#none"><span>1950</span></a>
                                                                            </li>
                                                                            <li data-name="1949" data-value="1949"
                                                                                class=""><a
                                                                                    href="#none"><span>1949</span></a>
                                                                            </li>
                                                                            <li data-name="1948" data-value="1948"
                                                                                class=""><a
                                                                                    href="#none"><span>1948</span></a>
                                                                            </li>
                                                                            <li data-name="1947" data-value="1947"
                                                                                class=""><a
                                                                                    href="#none"><span>1947</span></a>
                                                                            </li>
                                                                            <li data-name="1946" data-value="1946"
                                                                                class=""><a
                                                                                    href="#none"><span>1946</span></a>
                                                                            </li>
                                                                            <li data-name="1945" data-value="1945"
                                                                                class=""><a
                                                                                    href="#none"><span>1945</span></a>
                                                                            </li>
                                                                            <li data-name="1944" data-value="1944"
                                                                                class=""><a
                                                                                    href="#none"><span>1944</span></a>
                                                                            </li>
                                                                            <li data-name="1943" data-value="1943"
                                                                                class=""><a
                                                                                    href="#none"><span>1943</span></a>
                                                                            </li>
                                                                            <li data-name="1942" data-value="1942"
                                                                                class=""><a
                                                                                    href="#none"><span>1942</span></a>
                                                                            </li>
                                                                            <li data-name="1941" data-value="1941"
                                                                                class=""><a
                                                                                    href="#none"><span>1941</span></a>
                                                                            </li>
                                                                            <li data-name="1940" data-value="1940"
                                                                                class=""><a
                                                                                    href="#none"><span>1940</span></a>
                                                                            </li>
                                                                            <li data-name="1939" data-value="1939"
                                                                                class=""><a
                                                                                    href="#none"><span>1939</span></a>
                                                                            </li>
                                                                            <li data-name="1938" data-value="1938"
                                                                                class=""><a
                                                                                    href="#none"><span>1938</span></a>
                                                                            </li>
                                                                            <li data-name="1937" data-value="1937"
                                                                                class=""><a
                                                                                    href="#none"><span>1937</span></a>
                                                                            </li>
                                                                            <li data-name="1936" data-value="1936"
                                                                                class=""><a
                                                                                    href="#none"><span>1936</span></a>
                                                                            </li>
                                                                            <li data-name="1935" data-value="1935"
                                                                                class=""><a
                                                                                    href="#none"><span>1935</span></a>
                                                                            </li>
                                                                            <li data-name="1934" data-value="1934"
                                                                                class=""><a
                                                                                    href="#none"><span>1934</span></a>
                                                                            </li>
                                                                            <li data-name="1933" data-value="1933"
                                                                                class=""><a
                                                                                    href="#none"><span>1933</span></a>
                                                                            </li>
                                                                            <li data-name="1932" data-value="1932"
                                                                                class=""><a
                                                                                    href="#none"><span>1932</span></a>
                                                                            </li>
                                                                            <li data-name="1931" data-value="1931"
                                                                                class=""><a
                                                                                    href="#none"><span>1931</span></a>
                                                                            </li>
                                                                            <li data-name="1930" data-value="1930"
                                                                                class=""><a
                                                                                    href="#none"><span>1930</span></a>
                                                                            </li>
                                                                            <li data-name="1929" data-value="1929"
                                                                                class=""><a
                                                                                    href="#none"><span>1929</span></a>
                                                                            </li>
                                                                            <li data-name="1928" data-value="1928"
                                                                                class=""><a
                                                                                    href="#none"><span>1928</span></a>
                                                                            </li>
                                                                            <li data-name="1927" data-value="1927"
                                                                                class=""><a
                                                                                    href="#none"><span>1927</span></a>
                                                                            </li>
                                                                            <li data-name="1926" data-value="1926"
                                                                                class=""><a
                                                                                    href="#none"><span>1926</span></a>
                                                                            </li>
                                                                            <li data-name="1925" data-value="1925"
                                                                                class=""><a
                                                                                    href="#none"><span>1925</span></a>
                                                                            </li>
                                                                            <li data-name="1924" data-value="1924"
                                                                                class=""><a
                                                                                    href="#none"><span>1924</span></a>
                                                                            </li>
                                                                            <li data-name="1923" data-value="1923"
                                                                                class=""><a
                                                                                    href="#none"><span>1923</span></a>
                                                                            </li>
                                                                            <li data-name="1922" data-value="1922"
                                                                                class=""><a
                                                                                    href="#none"><span>1922</span></a>
                                                                            </li>
                                                                            <li data-name="1921" data-value="1921"
                                                                                class=""><a
                                                                                    href="#none"><span>1921</span></a>
                                                                            </li>
                                                                            <li data-name="1920" data-value="1920"
                                                                                class=""><a
                                                                                    href="#none"><span>1920</span></a>
                                                                            </li>
                                                                            <li data-name="1919" data-value="1919"
                                                                                class=""><a
                                                                                    href="#none"><span>1919</span></a>
                                                                            </li>
                                                                            <li data-name="1918" data-value="1918"
                                                                                class=""><a
                                                                                    href="#none"><span>1918</span></a>
                                                                            </li>
                                                                            <li data-name="1917" data-value="1917"
                                                                                class=""><a
                                                                                    href="#none"><span>1917</span></a>
                                                                            </li>
                                                                            <li data-name="1916" data-value="1916"
                                                                                class=""><a
                                                                                    href="#none"><span>1916</span></a>
                                                                            </li>
                                                                            <li data-name="1915" data-value="1915"
                                                                                class=""><a
                                                                                    href="#none"><span>1915</span></a>
                                                                            </li>
                                                                            <li data-name="1914" data-value="1914"
                                                                                class=""><a
                                                                                    href="#none"><span>1914</span></a>
                                                                            </li>
                                                                            <li data-name="1913" data-value="1913"
                                                                                class=""><a
                                                                                    href="#none"><span>1913</span></a>
                                                                            </li>
                                                                            <li data-name="1912" data-value="1912"
                                                                                class=""><a
                                                                                    href="#none"><span>1912</span></a>
                                                                            </li>
                                                                            <li data-name="1911" data-value="1911"
                                                                                class=""><a
                                                                                    href="#none"><span>1911</span></a>
                                                                            </li>
                                                                            <li data-name="1910" data-value="1910"
                                                                                class=""><a
                                                                                    href="#none"><span>1910</span></a>
                                                                            </li>
                                                                            <li data-name="1909" data-value="1909"
                                                                                class=""><a
                                                                                    href="#none"><span>1909</span></a>
                                                                            </li>
                                                                            <li data-name="1908" data-value="1908"
                                                                                class=""><a
                                                                                    href="#none"><span>1908</span></a>
                                                                            </li>
                                                                            <li data-name="1907" data-value="1907"
                                                                                class=""><a
                                                                                    href="#none"><span>1907</span></a>
                                                                            </li>
                                                                            <li data-name="1906" data-value="1906"
                                                                                class=""><a
                                                                                    href="#none"><span>1906</span></a>
                                                                            </li>
                                                                            <li data-name="1905" data-value="1905"
                                                                                class=""><a
                                                                                    href="#none"><span>1905</span></a>
                                                                            </li>
                                                                            <li data-name="1904" data-value="1904"
                                                                                class=""><a
                                                                                    href="#none"><span>1904</span></a>
                                                                            </li>
                                                                            <li data-name="1903" data-value="1903"
                                                                                class=""><a
                                                                                    href="#none"><span>1903</span></a>
                                                                            </li>
                                                                            <li data-name="1902" data-value="1902"
                                                                                class=""><a
                                                                                    href="#none"><span>1902</span></a>
                                                                            </li>
                                                                            <li data-name="1901" data-value="1901"
                                                                                class=""><a
                                                                                    href="#none"><span>1901</span></a>
                                                                            </li>
                                                                            <li data-name="1900" data-value="1900"
                                                                                class=""><a
                                                                                    href="#none"><span>1900</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!--// select-box-sm -->
                                                                <div class="select-box-sm ui-select" id="fromCurMonth"
                                                                    data-value="04">
                                                                    <a href="#" title="월 선택"
                                                                        class="select-value"><span>04</span></a>
                                                                    <div class="select-list">
                                                                        <ul>
                                                                            <li data-name="01" class=""><a
                                                                                    href="#none"><span>01</span></a>
                                                                            </li>
                                                                            <li data-name="02" class=""><a
                                                                                    href="#none"><span>02</span></a>
                                                                            </li>
                                                                            <li data-name="03" class=""><a
                                                                                    href="#none"><span>03</span></a>
                                                                            </li>
                                                                            <li data-name="04" class="selected"><a
                                                                                    href="#none"><span>04</span></a>
                                                                            </li>
                                                                            <li data-name="05" class=""><a
                                                                                    href="#none"><span>05</span></a>
                                                                            </li>
                                                                            <li data-name="06" class=""><a
                                                                                    href="#none"><span>06</span></a>
                                                                            </li>
                                                                            <li data-name="07" class=""><a
                                                                                    href="#none"><span>07</span></a>
                                                                            </li>
                                                                            <li data-name="08" class=""><a
                                                                                    href="#none"><span>08</span></a>
                                                                            </li>
                                                                            <li data-name="09" class=""><a
                                                                                    href="#none"><span>09</span></a>
                                                                            </li>
                                                                            <li data-name="10" class=""><a
                                                                                    href="#none"><span>10</span></a>
                                                                            </li>
                                                                            <li data-name="11" class=""><a
                                                                                    href="#none"><span>11</span></a>
                                                                            </li>
                                                                            <li data-name="12" class=""><a
                                                                                    href="#none"><span>12</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!--// select-box-sm -->
                                                                <div class="select-box-sm ui-select" id="fromCurDt"
                                                                    data-value="18">
                                                                    <a href="#" title="일 선택"
                                                                        class="select-value"><span>18</span></a>
                                                                    <div class="select-list">
                                                                        <ul>
                                                                            <li data-name="01" class=""><a
                                                                                    href="#none"><span>01</span></a>
                                                                            </li>
                                                                            <li data-name="02" class=""><a
                                                                                    href="#none"><span>02</span></a>
                                                                            </li>
                                                                            <li data-name="03" class=""><a
                                                                                    href="#none"><span>03</span></a>
                                                                            </li>
                                                                            <li data-name="04" class=""><a
                                                                                    href="#none"><span>04</span></a>
                                                                            </li>
                                                                            <li data-name="05" class=""><a
                                                                                    href="#none"><span>05</span></a>
                                                                            </li>
                                                                            <li data-name="06" class=""><a
                                                                                    href="#none"><span>06</span></a>
                                                                            </li>
                                                                            <li data-name="07" class=""><a
                                                                                    href="#none"><span>07</span></a>
                                                                            </li>
                                                                            <li data-name="08" class=""><a
                                                                                    href="#none"><span>08</span></a>
                                                                            </li>
                                                                            <li data-name="09" class=""><a
                                                                                    href="#none"><span>09</span></a>
                                                                            </li>
                                                                            <li data-name="10" class=""><a
                                                                                    href="#none"><span>10</span></a>
                                                                            </li>
                                                                            <li data-name="11" class=""><a
                                                                                    href="#none"><span>11</span></a>
                                                                            </li>
                                                                            <li data-name="12" class=""><a
                                                                                    href="#none"><span>12</span></a>
                                                                            </li>
                                                                            <li data-name="13" class=""><a
                                                                                    href="#none"><span>13</span></a>
                                                                            </li>
                                                                            <li data-name="14" class=""><a
                                                                                    href="#none"><span>14</span></a>
                                                                            </li>
                                                                            <li data-name="15" class=""><a
                                                                                    href="#none"><span>15</span></a>
                                                                            </li>
                                                                            <li data-name="16" class=""><a
                                                                                    href="#none"><span>16</span></a>
                                                                            </li>
                                                                            <li data-name="17" class=""><a
                                                                                    href="#none"><span>17</span></a>
                                                                            </li>
                                                                            <li data-name="18" class="selected"><a
                                                                                    href="#none"><span>18</span></a>
                                                                            </li>
                                                                            <li data-name="19" class=""><a
                                                                                    href="#none"><span>19</span></a>
                                                                            </li>
                                                                            <li data-name="20" class=""><a
                                                                                    href="#none"><span>20</span></a>
                                                                            </li>
                                                                            <li data-name="21" class=""><a
                                                                                    href="#none"><span>21</span></a>
                                                                            </li>
                                                                            <li data-name="22" class=""><a
                                                                                    href="#none"><span>22</span></a>
                                                                            </li>
                                                                            <li data-name="23" class=""><a
                                                                                    href="#none"><span>23</span></a>
                                                                            </li>
                                                                            <li data-name="24" class=""><a
                                                                                    href="#none"><span>24</span></a>
                                                                            </li>
                                                                            <li data-name="25" class=""><a
                                                                                    href="#none"><span>25</span></a>
                                                                            </li>
                                                                            <li data-name="26" class=""><a
                                                                                    href="#none"><span>26</span></a>
                                                                            </li>
                                                                            <li data-name="27" class=""><a
                                                                                    href="#none"><span>27</span></a>
                                                                            </li>
                                                                            <li data-name="28" class=""><a
                                                                                    href="#none"><span>28</span></a>
                                                                            </li>
                                                                            <li data-name="29" class=""><a
                                                                                    href="#none"><span>29</span></a>
                                                                            </li>
                                                                            <li data-name="30" class=""><a
                                                                                    href="#none"><span>30</span></a>
                                                                            </li>
                                                                            <li data-name="31" class=""><a
                                                                                    href="#none"><span>31</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!--// select-box-sm -->
                                                            </div>
                                                            <!--// input-group-form -->
                                                            <div class="input-group-txt">~</div>
                                                            <div class="input-group-form">
                                                                <div class="select-box-sm ui-select" id="toCurYear"
                                                                    data-value="2023">
                                                                    <a href="#" title="연도 선택"
                                                                        class="select-value"><span>2023</span></a>
                                                                    <div class="select-list">
                                                                        <ul>
                                                                            <li data-name="2009" class=""><a
                                                                                    href="#none"><span>2009</span></a>
                                                                            </li>
                                                                            <li data-name="2008" class=""><a
                                                                                    href="#none"><span>2008</span></a>
                                                                            </li>
                                                                            <li data-name="2007" class=""><a
                                                                                    href="#none"><span>2007</span></a>
                                                                            </li>
                                                                            <li data-name="2006" class=""><a
                                                                                    href="#none"><span>2006</span></a>
                                                                            </li>
                                                                            <li data-name="2005" class=""><a
                                                                                    href="#none"><span>2005</span></a>
                                                                            </li>
                                                                            <li data-name="2004" class=""><a
                                                                                    href="#none"><span>2004</span></a>
                                                                            </li>
                                                                            <li data-name="2003" class=""><a
                                                                                    href="#none"><span>2003</span></a>
                                                                            </li>
                                                                            <li data-name="2002" class=""><a
                                                                                    href="#none"><span>2002</span></a>
                                                                            </li>
                                                                            <li data-name="2001" class=""><a
                                                                                    href="#none"><span>2001</span></a>
                                                                            </li>
                                                                            <li data-name="2000" class=""><a
                                                                                    href="#none"><span>2000</span></a>
                                                                            </li>
                                                                            <li data-name="1999" class=""><a
                                                                                    href="#none"><span>1999</span></a>
                                                                            </li>
                                                                            <li data-name="1998" class=""><a
                                                                                    href="#none"><span>1998</span></a>
                                                                            </li>
                                                                            <li data-name="1997" class=""><a
                                                                                    href="#none"><span>1997</span></a>
                                                                            </li>
                                                                            <li data-name="1996" class=""><a
                                                                                    href="#none"><span>1996</span></a>
                                                                            </li>
                                                                            <li data-name="1995" class=""><a
                                                                                    href="#none"><span>1995</span></a>
                                                                            </li>
                                                                            <li data-name="1994" class=""><a
                                                                                    href="#none"><span>1994</span></a>
                                                                            </li>
                                                                            <li data-name="1993" class=""><a
                                                                                    href="#none"><span>1993</span></a>
                                                                            </li>
                                                                            <li data-name="1992" class=""><a
                                                                                    href="#none"><span>1992</span></a>
                                                                            </li>
                                                                            <li data-name="1991" class=""><a
                                                                                    href="#none"><span>1991</span></a>
                                                                            </li>
                                                                            <li data-name="1990" class=""><a
                                                                                    href="#none"><span>1990</span></a>
                                                                            </li>
                                                                            <li data-name="1989" class=""><a
                                                                                    href="#none"><span>1989</span></a>
                                                                            </li>
                                                                            <li data-name="1988" class=""><a
                                                                                    href="#none"><span>1988</span></a>
                                                                            </li>
                                                                            <li data-name="1987" class=""><a
                                                                                    href="#none"><span>1987</span></a>
                                                                            </li>
                                                                            <li data-name="1986" class=""><a
                                                                                    href="#none"><span>1986</span></a>
                                                                            </li>
                                                                            <li data-name="1985" class=""><a
                                                                                    href="#none"><span>1985</span></a>
                                                                            </li>
                                                                            <li data-name="1984" class=""><a
                                                                                    href="#none"><span>1984</span></a>
                                                                            </li>
                                                                            <li data-name="1983" class=""><a
                                                                                    href="#none"><span>1983</span></a>
                                                                            </li>
                                                                            <li data-name="1982" class=""><a
                                                                                    href="#none"><span>1982</span></a>
                                                                            </li>
                                                                            <li data-name="1981" class=""><a
                                                                                    href="#none"><span>1981</span></a>
                                                                            </li>
                                                                            <li data-name="1980" class=""><a
                                                                                    href="#none"><span>1980</span></a>
                                                                            </li>
                                                                            <li data-name="1979" class=""><a
                                                                                    href="#none"><span>1979</span></a>
                                                                            </li>
                                                                            <li data-name="1978" class=""><a
                                                                                    href="#none"><span>1978</span></a>
                                                                            </li>
                                                                            <li data-name="1977" class=""><a
                                                                                    href="#none"><span>1977</span></a>
                                                                            </li>
                                                                            <li data-name="1976" class=""><a
                                                                                    href="#none"><span>1976</span></a>
                                                                            </li>
                                                                            <li data-name="1975" class=""><a
                                                                                    href="#none"><span>1975</span></a>
                                                                            </li>
                                                                            <li data-name="1974" class=""><a
                                                                                    href="#none"><span>1974</span></a>
                                                                            </li>
                                                                            <li data-name="1973" class=""><a
                                                                                    href="#none"><span>1973</span></a>
                                                                            </li>
                                                                            <li data-name="1972" class=""><a
                                                                                    href="#none"><span>1972</span></a>
                                                                            </li>
                                                                            <li data-name="1971" class=""><a
                                                                                    href="#none"><span>1971</span></a>
                                                                            </li>
                                                                            <li data-name="1970" class=""><a
                                                                                    href="#none"><span>1970</span></a>
                                                                            </li>
                                                                            <li data-name="1969" class=""><a
                                                                                    href="#none"><span>1969</span></a>
                                                                            </li>
                                                                            <li data-name="1968" class=""><a
                                                                                    href="#none"><span>1968</span></a>
                                                                            </li>
                                                                            <li data-name="1967" class=""><a
                                                                                    href="#none"><span>1967</span></a>
                                                                            </li>
                                                                            <li data-name="1966" class=""><a
                                                                                    href="#none"><span>1966</span></a>
                                                                            </li>
                                                                            <li data-name="1965" class=""><a
                                                                                    href="#none"><span>1965</span></a>
                                                                            </li>
                                                                            <li data-name="1964" class=""><a
                                                                                    href="#none"><span>1964</span></a>
                                                                            </li>
                                                                            <li data-name="1963" class=""><a
                                                                                    href="#none"><span>1963</span></a>
                                                                            </li>
                                                                            <li data-name="1962" class=""><a
                                                                                    href="#none"><span>1962</span></a>
                                                                            </li>
                                                                            <li data-name="1961" class=""><a
                                                                                    href="#none"><span>1961</span></a>
                                                                            </li>
                                                                            <li data-name="1960" class=""><a
                                                                                    href="#none"><span>1960</span></a>
                                                                            </li>
                                                                            <li data-name="1959" class=""><a
                                                                                    href="#none"><span>1959</span></a>
                                                                            </li>
                                                                            <li data-name="1958" class=""><a
                                                                                    href="#none"><span>1958</span></a>
                                                                            </li>
                                                                            <li data-name="1957" class=""><a
                                                                                    href="#none"><span>1957</span></a>
                                                                            </li>
                                                                            <li data-name="1956" class=""><a
                                                                                    href="#none"><span>1956</span></a>
                                                                            </li>
                                                                            <li data-name="1955" class=""><a
                                                                                    href="#none"><span>1955</span></a>
                                                                            </li>
                                                                            <li data-name="1954" class=""><a
                                                                                    href="#none"><span>1954</span></a>
                                                                            </li>
                                                                            <li data-name="1953" class=""><a
                                                                                    href="#none"><span>1953</span></a>
                                                                            </li>
                                                                            <li data-name="1952" class=""><a
                                                                                    href="#none"><span>1952</span></a>
                                                                            </li>
                                                                            <li data-name="1951" class=""><a
                                                                                    href="#none"><span>1951</span></a>
                                                                            </li>
                                                                            <li data-name="1950" class=""><a
                                                                                    href="#none"><span>1950</span></a>
                                                                            </li>
                                                                            <li data-name="1949" class=""><a
                                                                                    href="#none"><span>1949</span></a>
                                                                            </li>
                                                                            <li data-name="1948" class=""><a
                                                                                    href="#none"><span>1948</span></a>
                                                                            </li>
                                                                            <li data-name="1947" class=""><a
                                                                                    href="#none"><span>1947</span></a>
                                                                            </li>
                                                                            <li data-name="1946" class=""><a
                                                                                    href="#none"><span>1946</span></a>
                                                                            </li>
                                                                            <li data-name="1945" class=""><a
                                                                                    href="#none"><span>1945</span></a>
                                                                            </li>
                                                                            <li data-name="1944" class=""><a
                                                                                    href="#none"><span>1944</span></a>
                                                                            </li>
                                                                            <li data-name="1943" class=""><a
                                                                                    href="#none"><span>1943</span></a>
                                                                            </li>
                                                                            <li data-name="1942" class=""><a
                                                                                    href="#none"><span>1942</span></a>
                                                                            </li>
                                                                            <li data-name="1941" class=""><a
                                                                                    href="#none"><span>1941</span></a>
                                                                            </li>
                                                                            <li data-name="1940" class=""><a
                                                                                    href="#none"><span>1940</span></a>
                                                                            </li>
                                                                            <li data-name="1939" class=""><a
                                                                                    href="#none"><span>1939</span></a>
                                                                            </li>
                                                                            <li data-name="1938" class=""><a
                                                                                    href="#none"><span>1938</span></a>
                                                                            </li>
                                                                            <li data-name="1937" class=""><a
                                                                                    href="#none"><span>1937</span></a>
                                                                            </li>
                                                                            <li data-name="1936" class=""><a
                                                                                    href="#none"><span>1936</span></a>
                                                                            </li>
                                                                            <li data-name="1935" class=""><a
                                                                                    href="#none"><span>1935</span></a>
                                                                            </li>
                                                                            <li data-name="1934" class=""><a
                                                                                    href="#none"><span>1934</span></a>
                                                                            </li>
                                                                            <li data-name="1933" class=""><a
                                                                                    href="#none"><span>1933</span></a>
                                                                            </li>
                                                                            <li data-name="1932" class=""><a
                                                                                    href="#none"><span>1932</span></a>
                                                                            </li>
                                                                            <li data-name="1931" class=""><a
                                                                                    href="#none"><span>1931</span></a>
                                                                            </li>
                                                                            <li data-name="1930" class=""><a
                                                                                    href="#none"><span>1930</span></a>
                                                                            </li>
                                                                            <li data-name="1929" class=""><a
                                                                                    href="#none"><span>1929</span></a>
                                                                            </li>
                                                                            <li data-name="1928" class=""><a
                                                                                    href="#none"><span>1928</span></a>
                                                                            </li>
                                                                            <li data-name="1927" class=""><a
                                                                                    href="#none"><span>1927</span></a>
                                                                            </li>
                                                                            <li data-name="1926" class=""><a
                                                                                    href="#none"><span>1926</span></a>
                                                                            </li>
                                                                            <li data-name="1925" class=""><a
                                                                                    href="#none"><span>1925</span></a>
                                                                            </li>
                                                                            <li data-name="1924" class=""><a
                                                                                    href="#none"><span>1924</span></a>
                                                                            </li>
                                                                            <li data-name="1923" class=""><a
                                                                                    href="#none"><span>1923</span></a>
                                                                            </li>
                                                                            <li data-name="1922" class=""><a
                                                                                    href="#none"><span>1922</span></a>
                                                                            </li>
                                                                            <li data-name="1921" class=""><a
                                                                                    href="#none"><span>1921</span></a>
                                                                            </li>
                                                                            <li data-name="1920" class=""><a
                                                                                    href="#none"><span>1920</span></a>
                                                                            </li>
                                                                            <li data-name="1919" class=""><a
                                                                                    href="#none"><span>1919</span></a>
                                                                            </li>
                                                                            <li data-name="1918" class=""><a
                                                                                    href="#none"><span>1918</span></a>
                                                                            </li>
                                                                            <li data-name="1917" class=""><a
                                                                                    href="#none"><span>1917</span></a>
                                                                            </li>
                                                                            <li data-name="1916" class=""><a
                                                                                    href="#none"><span>1916</span></a>
                                                                            </li>
                                                                            <li data-name="1915" class=""><a
                                                                                    href="#none"><span>1915</span></a>
                                                                            </li>
                                                                            <li data-name="1914" class=""><a
                                                                                    href="#none"><span>1914</span></a>
                                                                            </li>
                                                                            <li data-name="1913" class=""><a
                                                                                    href="#none"><span>1913</span></a>
                                                                            </li>
                                                                            <li data-name="1912" class=""><a
                                                                                    href="#none"><span>1912</span></a>
                                                                            </li>
                                                                            <li data-name="1911" class=""><a
                                                                                    href="#none"><span>1911</span></a>
                                                                            </li>
                                                                            <li data-name="1910" class=""><a
                                                                                    href="#none"><span>1910</span></a>
                                                                            </li>
                                                                            <li data-name="1909" class=""><a
                                                                                    href="#none"><span>1909</span></a>
                                                                            </li>
                                                                            <li data-name="1908" class=""><a
                                                                                    href="#none"><span>1908</span></a>
                                                                            </li>
                                                                            <li data-name="1907" class=""><a
                                                                                    href="#none"><span>1907</span></a>
                                                                            </li>
                                                                            <li data-name="1906" class=""><a
                                                                                    href="#none"><span>1906</span></a>
                                                                            </li>
                                                                            <li data-name="1905" class=""><a
                                                                                    href="#none"><span>1905</span></a>
                                                                            </li>
                                                                            <li data-name="1904" class=""><a
                                                                                    href="#none"><span>1904</span></a>
                                                                            </li>
                                                                            <li data-name="1903" class=""><a
                                                                                    href="#none"><span>1903</span></a>
                                                                            </li>
                                                                            <li data-name="1902" class=""><a
                                                                                    href="#none"><span>1902</span></a>
                                                                            </li>
                                                                            <li data-name="1901" class=""><a
                                                                                    href="#none"><span>1901</span></a>
                                                                            </li>
                                                                            <li data-name="1900" class=""><a
                                                                                    href="#none"><span>1900</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!--// select-box-sm -->
                                                                <div class="select-box-sm ui-select" id="toCurMonth"
                                                                    data-value="04">
                                                                    <a href="#" title="월 선택"
                                                                        class="select-value"><span>04</span></a>
                                                                    <div class="select-list">
                                                                        <ul>
                                                                            <li data-name="01" class=""><a
                                                                                    href="#none"><span>01</span></a>
                                                                            </li>
                                                                            <li data-name="02" class=""><a
                                                                                    href="#none"><span>02</span></a>
                                                                            </li>
                                                                            <li data-name="03" class=""><a
                                                                                    href="#none"><span>03</span></a>
                                                                            </li>
                                                                            <li data-name="04" class="selected"><a
                                                                                    href="#none"><span>04</span></a>
                                                                            </li>
                                                                            <li data-name="05" class=""><a
                                                                                    href="#none"><span>05</span></a>
                                                                            </li>
                                                                            <li data-name="06" class=""><a
                                                                                    href="#none"><span>06</span></a>
                                                                            </li>
                                                                            <li data-name="07" class=""><a
                                                                                    href="#none"><span>07</span></a>
                                                                            </li>
                                                                            <li data-name="08" class=""><a
                                                                                    href="#none"><span>08</span></a>
                                                                            </li>
                                                                            <li data-name="09" class=""><a
                                                                                    href="#none"><span>09</span></a>
                                                                            </li>
                                                                            <li data-name="10" class=""><a
                                                                                    href="#none"><span>10</span></a>
                                                                            </li>
                                                                            <li data-name="11" class=""><a
                                                                                    href="#none"><span>11</span></a>
                                                                            </li>
                                                                            <li data-name="12" class=""><a
                                                                                    href="#none"><span>12</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!--// select-box-sm -->
                                                                <div class="select-box-sm ui-select" id="toCurDt"
                                                                    data-value="18">
                                                                    <a href="#" title="일 선택"
                                                                        class="select-value"><span>18</span></a>
                                                                    <div class="select-list">
                                                                        <ul>
                                                                            <li data-name="01" class=""><a
                                                                                    href="#none"><span>01</span></a>
                                                                            </li>
                                                                            <li data-name="02" class=""><a
                                                                                    href="#none"><span>02</span></a>
                                                                            </li>
                                                                            <li data-name="03" class=""><a
                                                                                    href="#none"><span>03</span></a>
                                                                            </li>
                                                                            <li data-name="04" class=""><a
                                                                                    href="#none"><span>04</span></a>
                                                                            </li>
                                                                            <li data-name="05" class=""><a
                                                                                    href="#none"><span>05</span></a>
                                                                            </li>
                                                                            <li data-name="06" class=""><a
                                                                                    href="#none"><span>06</span></a>
                                                                            </li>
                                                                            <li data-name="07" class=""><a
                                                                                    href="#none"><span>07</span></a>
                                                                            </li>
                                                                            <li data-name="08" class=""><a
                                                                                    href="#none"><span>08</span></a>
                                                                            </li>
                                                                            <li data-name="09" class=""><a
                                                                                    href="#none"><span>09</span></a>
                                                                            </li>
                                                                            <li data-name="10" class=""><a
                                                                                    href="#none"><span>10</span></a>
                                                                            </li>
                                                                            <li data-name="11" class=""><a
                                                                                    href="#none"><span>11</span></a>
                                                                            </li>
                                                                            <li data-name="12" class=""><a
                                                                                    href="#none"><span>12</span></a>
                                                                            </li>
                                                                            <li data-name="13" class=""><a
                                                                                    href="#none"><span>13</span></a>
                                                                            </li>
                                                                            <li data-name="14" class=""><a
                                                                                    href="#none"><span>14</span></a>
                                                                            </li>
                                                                            <li data-name="15" class=""><a
                                                                                    href="#none"><span>15</span></a>
                                                                            </li>
                                                                            <li data-name="16" class=""><a
                                                                                    href="#none"><span>16</span></a>
                                                                            </li>
                                                                            <li data-name="17" class=""><a
                                                                                    href="#none"><span>17</span></a>
                                                                            </li>
                                                                            <li data-name="18" class="selected"><a
                                                                                    href="#none"><span>18</span></a>
                                                                            </li>
                                                                            <li data-name="19" class=""><a
                                                                                    href="#none"><span>19</span></a>
                                                                            </li>
                                                                            <li data-name="20" class=""><a
                                                                                    href="#none"><span>20</span></a>
                                                                            </li>
                                                                            <li data-name="21" class=""><a
                                                                                    href="#none"><span>21</span></a>
                                                                            </li>
                                                                            <li data-name="22" class=""><a
                                                                                    href="#none"><span>22</span></a>
                                                                            </li>
                                                                            <li data-name="23" class=""><a
                                                                                    href="#none"><span>23</span></a>
                                                                            </li>
                                                                            <li data-name="24" class=""><a
                                                                                    href="#none"><span>24</span></a>
                                                                            </li>
                                                                            <li data-name="25" class=""><a
                                                                                    href="#none"><span>25</span></a>
                                                                            </li>
                                                                            <li data-name="26" class=""><a
                                                                                    href="#none"><span>26</span></a>
                                                                            </li>
                                                                            <li data-name="27" class=""><a
                                                                                    href="#none"><span>27</span></a>
                                                                            </li>
                                                                            <li data-name="28" class=""><a
                                                                                    href="#none"><span>28</span></a>
                                                                            </li>
                                                                            <li data-name="29" class=""><a
                                                                                    href="#none"><span>29</span></a>
                                                                            </li>
                                                                            <li data-name="30" class=""><a
                                                                                    href="#none"><span>30</span></a>
                                                                            </li>
                                                                            <li data-name="31" class=""><a
                                                                                    href="#none"><span>31</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
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
                                                                            <span>취소/반품</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="300" data-value="300">
                                                                        <a href="#none" class="counselType">
                                                                            <span>상품관련</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="400" data-value="400">
                                                                        <a href="#none" class="counselType">
                                                                            <span>배송관련</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="500" data-value="500">
                                                                        <a href="#none" class="counselType">
                                                                            <span>포인트</span>
                                                                        </a>
                                                                    </li>
                                                                    <li data-name="951" data-value="951">
                                                                        <a href="#none" class="counselType">
                                                                            <span>설선물세트 문의</span>
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