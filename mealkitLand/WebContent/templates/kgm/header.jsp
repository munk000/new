<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>밀키트랜드</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/kgm/header.css">
</head>

<body>

    <header id="header" class="header">
        <!-- ## header,gnb :: include.header() 영역 -->
        <div class="header-inner">
            <h1 class="logo"><a href="${pageContext.request.contextPath}/templates/ksj/main.jsp"><span class="blind">밀키트랜드</span></a></h1>

            <div class="util">
                <ul>
                    <%
						Long id =(Long)session.getAttribute("userId");
					%>
					<%if(id==null){%>
                    <li><a href="${pageContext.request.contextPath}/login.user">로그인</a></li>
                    <%}else{ %>
                    <li><a href="${pageContext.request.contextPath}/logout.user">로그아웃</a></li>
                    <%} %>
                    <li><a href="${pageContext.request.contextPath}/templates/kgm/loginForm.jsp">회원가입</a></li>
                    <li><a href="/mypage/orderlist">주문조회</a></li>
                    <li><a href="${pageContext.request.contextPath}/templates/jyk/boardMain.jsp">고객센터</a></li>
                </ul>
            </div>
            <!--// util -->
            <div class="my-menu">
                <ul>
                    <li><a href="/display/coupon/list" class="btn-util-coupon" title=""><span
                                class="blind">쿠폰</span></a>
                    </li>
                    <li><a href="/mypage/main" class="btn-util-mypage" title=""><span class="blind">마이페이지</span></a>
                    </li>
                    <li>
                        <a href="/order/cart" class="btn-util-cart" title="">
                            <span class="blind">장바구니</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <!--// my-menu -->
        <!-- </div> -->
        <!--// header-inner -->

        <div class="gnb-wrap">
            <div class="inner">
                <div class="category-wrap">

                    <a href="#all-category" class="btn-menu-all category-ul"><span>카테고리</span></a>
                    <nav id="all-category" class="category-menu">
                        <ul class="cate-dep1">
                            <li>
                                <a href="/product/list?depth1=R402" data-cd1="R402">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20230414/IMG1681xmY450972761.png"
                                            alt="">
                                    </i>
                                    <span class="menu new">아침</span>
                                </a>
                            </li>
                            <li>
                                <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
                                    data-cd1="R254">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20220523/IMG1653WAC282333226.png"
                                            alt="">
                                    </i>
                                    <span class="menu ">점심</span>
                                </a>
                            </li>
                            <li>
                                <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
                                    data-cd1="R254">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20220523/IMG1653WAC282333226.png"
                                            alt="">
                                    </i>
                                    <span class="menu ">저녁</span>
                                </a>
                            </li>
                            <li>
                                <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
                                    data-cd1="R254">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20220523/IMG1653WAC282333226.png"
                                            alt="">
                                    </i>
                                    <span class="menu ">지역 특산물</span>
                                </a>
                            </li>
                            <li>
                                <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
                                    data-cd1="R254">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20220523/IMG1653WAC282333226.png"
                                            alt="">
                                    </i>
                                    <span class="menu ">술 안주</span>
                                </a>
                            </li>
                            <li>
                                <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
                                    data-cd1="R254">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20220523/IMG1653WAC282333226.png"
                                            alt="">
                                    </i>
                                    <span class="menu ">야식</span>
                                </a>
                            </li>
                            <li>
                                <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
                                    data-cd1="R254">
                                    <i class="ico-cate-gnb">
                                        <img src="https://file.rankingdak.com/image/RANK/BANNER/CATE_PC1_1/20220523/IMG1653WAC282333226.png"
                                            alt="">
                                    </i>
                                    <span class="menu ">건강</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <!--// category-menu -->

                </div>
                <!--// category-wrap -->
                <nav id="gnb" class="gnb">
                    <ul>
                        <li class="">
                            <a href="/display/rank/sale">

                                <span>메뉴판</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="/promotion/exhibit/list">

                                <span>문의 게시판 목록</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="/display/onePack/list">

                                <span>공지 사항</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!--// gnb -->
            </div>
            <!--// inner -->
        </div>
        <!--// gnb-wrap -->
        <input type="hidden" name="eventCd" value="">
        <input type="hidden" name="eventType" value="">
        <input type="hidden" name="landingPage" value="">
        <div id="evntFindWinPopUp"></div>


        <!--// ## header,gnb :: include.header() 영역 -->
    </header>
</body>

</html>