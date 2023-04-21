<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../../static/css/kyj/order.css">
</head>
<body>
 <div class="container">
    <header></header>
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
      
        <table>
          <h2>주문관리</h2>
          <input type="text" class="search" name="textsearch" placeholder="상품명 검색">
         <button class="btn_quit">상세보기</button>
          <tr class="first_tr"> <td class="height_td"></td> </tr>
          <tr>  <th><input type="checkbox" class="box" name="check"> <th>주문번호</th> <th>주문자명</th> <th>상품명</th> <th>주문날짜</th> <th>배송상태</th> <th>회원번호</th></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>001</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>002</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>003</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>004</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>005</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>006</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>007</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>008</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>009</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
            <tr><td><input type="checkbox" class="box" name="check"></td> <td>111</td> <td>마동석</td> <td>JSP</td> <td>2023-01-01</td> <td>배송완료</td> <td>007</td></tr>
          <tr class="last_tr"> <td class="height_td"></td> </tr>
    
           
       
          </div>
        </table>
      </dexampleiv>   <!--tbl_div-->
  

    </div>
    <div class="pagination">
      <a href="#"><</a>
      <a href="#">1</a>
      <a href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#">></a>
    </div>
  </div>

</body>
</html>