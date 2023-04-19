<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../../static/css/kyj/register.css">
</head>
<body>
 <div class="container">
    <header></header>
    <div class="left-panel">
  
   
    <ul class="menu_ul">
    <li><a href="#"></a></li> 
    <li><a href="main.jsp">사이트 바로가기</a></li>
    <li><a href="member.jsp">회원관리</a></li>
    <li><a href="register.jsp">상품등록</a></li>
    <li><a href="board.jsp">문의게시판 관리</a></li>
    <li><a href="#">공지사항 관리</a></li>
    <li><a href="order.jsp">주문관리</a></li>
    <li><a href="main.jsp">로그아웃</a></li>
      </ul>

    </div>
    <div class="right-panel">

     
      
        
       
       <div class="tbl_div">
      
        <form>
            <label for="name">상품명</label>
            <input type="text" id="name" name="name" required>
          
            <label for="category">카테고리</label>
            <select id="category" name="category">
              <option value="">--카테고리 선택--</option>
              <option value="아침">아침</option>
              <option value="점심">점심</option>
              <option value="저녁">저녁</option>
              <option value="야식">야식</option>
            </select>
          
            <label for="price">가격</label>
            <input type="number" id="price" name="price" required>
          
            <label for="description">상세 설명</label>
            <textarea id="description" name="description"></textarea>
          
            <label for="image">이미지</label>
            <input type="file" id="image" name="image">
          
            <button type="submit">등록</button>
          </form>
      </dexampleiv>   <!--tbl_div-->
  

    </div>
  </div>
</body>
</html>