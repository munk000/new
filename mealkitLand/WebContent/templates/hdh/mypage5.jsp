<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage5.css">
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
 	text-align: center;
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
                            <h3 class="title-menu">장바구니</h3>
         <div class="search-box ui-toggle">
                            <div class="search-head">
                               
                                
                            </div>
                        </div>
                        <div class="no-data-type1 id=noDataWrap">
                          
                            	<table class="tbl">
                            		<tr><th>상품이름 </th> <th>상품생산일 </th> <th>상품가격</th></tr>
                            		<tr><td><c:out value="${cartDTO.productName}"/></td> <td><c:out value="${cartDTO.productTypeDate}"/></td> <td><c:out value="${cartDTO.productPrice}"/></td></tr>
                            	</table>
                          
                            
                            
                        </div>
    </section>
	<%@include file = "/templates/kgm/footer.jsp" %>
    </div>
</body>
</html>