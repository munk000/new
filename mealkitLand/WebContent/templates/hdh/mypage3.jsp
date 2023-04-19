<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>배송 조회</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage3.css">
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
                <div class="frame-right">
                    <div class="frame-cnt-inner">
                        <div class="menu-title-area">
                            <h3 class="title-menu">배송 조회</h3>
                        </div>
                        <div class="board-list" id="tbl-my-delivery">
                            <table>
                                <caption>배송 조회</caption>
                                <colgroup>
                                    <col style="width:50px">
                                    <col style="width: 100px">
                                    <col style="width:auto">
                                    <col style="width: 100px">
                                    <col style="width:140px">
                                    <col style="width:100px">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">선택</th>
                                        <th scope="col">받으실 분</th>
                                        <th scope="col">배송주소</th>
                                        <th scope="col">배송유형</th>
                                        <th scope="col">연락처</th>
                                        <th scope="col">관리</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="6">
                                            <div class="no-data">
                                                <p class="message">내역이 없습니다.</p>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="btn-bottom-area">
                            <button type="button" class="btn-basic-lg2 btn-navy btn-basic-delivery">
                                <span>기본 배송지로 설정</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</body>
</html>