<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage1.css">
</head>
<body>
    <div class="wrap" style>
    <%@include file = "/templates/kgm/header.jsp" %>
    <section id="contents" class="container">
        <div class="content-wrap">
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
                                            <a>나의 구독내역</a>
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
                <form id="frm" name="frm" action="/mypage/info/view" method="post" onsubmit="return false;">
                    <div class="frame-right" id="memberInfoContents">
                        <div class="frame-cnt-inner">
                            <div class="menu-title-area">
                                <h3 class="title-menu">회원정보 수정 </h3>
                            </div><!--// menu-title-area -->
                                <div class="board-form type3">
                                    <div class="input-guide-box">
                                        <div class="inner">
                                            <h4 class="box-tit">비밀번호를 입력해주세요.</h4>
                                            <p class="txt">회원님의 개인정보 보호를 위해 비밀번호를 다시 한번 확인 합니다.<br>비밀번호가 노출되지 않도록 주의해주세요.</p>
                                            <div class="input-group type-lg w-full">
                                                <input type="password" id="password" name="password" class="input-text" placeholder="비밀번호 입력">
                                                <span class="input-group-btn"><button type="button" class="btn-form btn-primary btn_submit"><span>확인</span></button></span>
                                            </div>
                                        </div>
                                    </div><!--// input-guide-box -->
                                </div><!--// board-form -->
                        </div><!--// frame-cnt-inner -->
                    </div><!--// frame-right -->
                <div>
                <input type="hidden" name="_csrf" value="c2aaf7a0-9a42-4e86-a92e-fb591e16c462">
                </div></form>
            </div>
        </div>
	</section>
	<%@include file = "/templates/kgm/footer.jsp" %>
    </div>
</body>
</html>