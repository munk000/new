<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
<link rel="stylesheet" href="../../static/css/kyj/notice.css">
</head>
<body>
<div class="container">
        <header><h2></h2></header>
        <div class="left-panel">
      
       
        <ul class="menu_ul">
         <li><a href="#"></a></li> 
        <li><a href="main.jsp">사이트 바로가기</a></li>
        <li><a href="member.jsp">회원관리</a></li>
         <li><a href="order.jsp">주문관리</a></li>
         <li><a href="board.jsp">문의게시판 관리</a></li>
         <li><a href="manageProduct.jsp">상품관리</a></li>
        <li><a href="register.jsp">상품등록</a></li>
        <li><a href="notice.jsp">공지사항 작성</a></li>
        <li><a href="main.jsp">로그아웃</a></li>
          </ul>
    
        </div>
        <div class="right-panel">
         
           <div class="tbl_div">
          
    
            <form>
                <div class="write_wrap">
                    <h2>공지사항 등록</h2>
                    <div class="title_area">
                      <input type="text" class="title_input" placeholder="제목을 입력하세요" />
                    </div>
                    <div class="content_area">
                      <textarea class="content_input" placeholder="내용을 입력하세요"></textarea>
                    </div>
                    <div class="bottom_area">
                      <button class="btn_cancel">취소</button>
                      <button class="btn_submit">등록</button>
                    </div>
                  </div>
              </form>
          </dexampleiv>   <!--tbl_div-->
      
        </div>
      </div>
</body>
</html>