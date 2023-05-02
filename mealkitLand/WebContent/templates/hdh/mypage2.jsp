<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 구독내역</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/hdh/mypage2.css">
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
 	display:none;
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
                        <div class="menu-title-area">
                            <h3 class="title-menu">나의 구독내역</h3>
                        </div>
                        <div class="page-mid">
                            <ul class="top-tab-menu">
                                <li class="current">
                                    <a>주문내역</a>
                                </li>
                            </ul>
                        </div>
                        <div class="search-box ui-toggle">
                            <div class="search-head">
                                <p class="search-period" style="display:inline-block;">조회기간 2023.03.18 ~ 2023.04.18 (최근 1개월)</p>
                                <button type="button" class="btn" style="background:red; color:white;">조회</button>
                            	
                                
                            </div>
                        </div>
                        <div class="no-data-type1 id=noDataWrap">
                          
                            	<table class="tbl">
                            		<tr><th>구독상품</th> <th>구독개수</th> <th>구독날짜</th></tr>
                            		<tr><td><c:out value="${subscribeDTO.productName}"/></td> <td><c:out value="${subscribeDTO.subscribeCount}"/></td> <td><c:out value="${subscribeDTO.subscribeDate}"/></td></tr>
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
</html>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>let page =  ${pageContext.request.contextPath};</script>
<script> 


const btn = document.querySelector(".btn");
const table = document.querySelector(".tbl");

btn.addEventListener("click",()=>{
	table.style.display = "block";
   
})
	


</script>

