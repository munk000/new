<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 게시글 수정/삭제</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage6.css">
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
                            <h3 class="title-menu">내 게시글 수정/삭제</h3>
                        </div>
                        <div id="div_done" class="mt10">
                            <form id="frmDone">
                                <div class="board-list ui-toggle">
                                    <div class="list-toggle-head">
                                        <p class="title">
                                            "내 게시글"
                                            <span class="text-primary">0건</span>
                                        </p>
                                    </div>
                                    <div class="ui-toggle-content">
                                        <table class="sub-tb-list">
                                            <caption>게시글 목록</caption>
                                            <colgroup>
                                                <col style="width:96px">
                                                <col style="width:auto">
                                                <col style="width:120px">
                                                <col style="width:90px">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col" colspan="2">상품</th>
                                                    <th scope="col">작성일</th>
                                                    <th scope="col">게시글작성 </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td colspan="4" style="text-align: center">
                                                        <div class="no-data">
                                                            <p class="message">작성된 게시글이 없습니다.</p>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="pagination">
                                            <div class="pd_top10"></div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</body>
</html>