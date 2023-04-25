<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<<<<<<< HEAD
<title>자주 묻는 질문</title>
<link rel="stylesheet" href="../../static/css/jyk/boardMain.css">
=======
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jyk/boardMain.css">
>>>>>>> 96e731d2a779bd83e40b6e1d6240c954c2014361
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
								<li><a href="" class="menu">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/templates/jyk/boardMain.jsp" class="menu">자주묻는질문</a></li>
								<li><a href="${pageContext.request.contextPath}/templates/jyk/boardWrite.jsp" class="menu" onclick="checkLogin();">1:1문의하기</a>
								</li>
							</ul>
						</nav>
						<div class="aside-guide-box">
							<dl>
								<dt>밀키트랜드 고객센터</dt>
								<dd class="phone-num">02-6405-8088</dd>
								<dd>
									평일 <span class="text-num-md">09:00 ~ 18:00</span>
								</dd>
								<dd>주말, 공휴일 휴무</dd>
							</dl>
							<!-- <dl></dl> -->
						</div>
					</div>
				</div>
				<div class="frame-right">
					<div class="frame-cnt-inner">
						<form action="" id="frm" name="frm" method="get"
							accept-charset="utf-8">
							<!-- <input type="text">*3 -->
							<div class="menu-title-area">
								<h3 class="title-menu">자주묻는 FAQ</h3>
							</div>
							<div class="top-search-box">
								<div class="input-group-wrap box-type">
									<div class="input-group">
										<label for="item-1" class="blind">검색</label> <input
											type="text" id="item1-1" class="input-text" name="keyword"
											placeholder="궁금하신 내용을 입력해주세요" value> <span
											class="input-group-btn">
											<button id="faqSearch" type="button" class="btn-icon-search"
												title>
												<i class="ico-btn-search"></i> <span class="blind">검색하기</span>
											</button>
										</span>
									</div>
								</div>
								<ul class="form-inline-list srchCategory faq-category-list">
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-3-1" class="radio-btn-rud3"
												name="category" value checked> <label
												for="radio-3-1">전체보기</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-3-2" class="radio-btn-rud3"
												name="category" value="F001"> <label for="radio-3-2">상품관련</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-3-3" class="radio-btn-rud3"
												name="category" value="F002"> <label for="radio-3-3">주문
												및 결제</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-3-4" class="radio-btn-rud3"
												name="category" value="F003"> <label for="radio-3-4">배송관련</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-3-5" class="radio-btn-rud3"
												name="category" value="F004"> <label for="radio-3-5">기타</label>
										</div>
									</li>
								</ul>
							</div>


							<!-- top-search-box 게시판 내용-->
							<div class="board-list ui-accordion">
								<ul class="accordion-list type2 ui-accordion-list">
									<!-- 게시판 반복문  -->
									<li>
										<!-- 활성화시 addClass active --> 
										<!-- 질문영역 --> 
										<a href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">언제부터 멤버십이 변경되나요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
										</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">2023년 4월 1일부터 새로워진 멤버십을 만나볼 수 있습니다.
												</p>
											</div>
										</div>
									</li>
									<li>
										<!-- 활성화시 addClass active --> <!-- 질문영역 --> <a
										href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">왜 멤버십이 리뉴얼 되는건가요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
									</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">보다 많은분들께 다양하고 실용적인 혜택을 드리기 위해 리뉴얼
													되었습니다.</p>
											</div>
										</div>
									</li>
									<li>
										<!-- 활성화시 addClass active --> <!-- 질문영역 --> <a
										href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">왜 멤버십이 리뉴얼 되는건가요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
									</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">보다 많은분들께 다양하고 실용적인 혜택을 드리기 위해 리뉴얼
													되었습니다.</p>
											</div>
										</div>
									</li>
									<li>
										<!-- 활성화시 addClass active --> <!-- 질문영역 --> <a
										href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">왜 멤버십이 리뉴얼 되는건가요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
									</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">보다 많은분들께 다양하고 실용적인 혜택을 드리기 위해 리뉴얼
													되었습니다.</p>
											</div>
										</div>
									</li>
									<li>
										<!-- 활성화시 addClass active --> <!-- 질문영역 --> <a
										href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">왜 멤버십이 리뉴얼 되는건가요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
									</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">보다 많은분들께 다양하고 실용적인 혜택을 드리기 위해 리뉴얼
													되었습니다.</p>
											</div>
										</div>
									</li>
									<li>
										<!-- 활성화시 addClass active --> <!-- 질문영역 --> <a
										href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">왜 멤버십이 리뉴얼 되는건가요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
									</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">보다 많은분들께 다양하고 실용적인 혜택을 드리기 위해 리뉴얼
													되었습니다.</p>
											</div>
										</div>
									</li>
									<li>
										<!-- 활성화시 addClass active --> <!-- 질문영역 --> <a
										href="javascript:;" class="title-div ui-accordion-click">
											<div class="subject">
												<span class="category">기타</span> <span class="classify">Q</span>
												<p class="txt">왜 멤버십이 리뉴얼 되는건가요?</p>
											</div>
											<div class="right">
												<i class="ico-arr-toggle"> <span class="blind">내용보기</span>
												</i>
											</div>
									</a>
										<div class="ui-accordion-view">
											<!-- 답변영역 -->
											<div class="answer">
												<p class="txt type2">보다 많은분들께 다양하고 실용적인 혜택을 드리기 위해 리뉴얼
													되었습니다.</p>
											</div>
										</div>
									</li>
									<!-- li 반복 -->
								</ul>
							</div>

							<!--   -->


							<!-- board-list 페이지네이션-->
							<div class="page-bottom">
								<div class="pagination">
									<div class="pagging-wrap page-area">
										<div class="page-number">
											<div class="pagination mt20">
												<!-- 페이지수 -->
												<a href="javascript:CmPageMove('0')" data-page="0"
													class="btn-page prev"> <span class="blind">이전</span>
												</a> <a href="#" class="current"><span>1</span></a> <a
													href="javascript:CmPageMove('2')"><span>2</span></a> <a
													href="javascript:CmPageMove('3')"><span>3</span></a> <a
													href="javascript:CmPageMove('4')"><span>4</span></a> <a
													href="javascript:CmPageMove('5')"><span>5</span></a> <a
													href="javascript:CmPageMove('6')"><span>6</span></a> <a
													href="javascript:CmPageMove('7')"><span>7</span></a> <a
													href="javascript:CmPageMove('8')"><span>8</span></a> <a
													href="javascript:CmPageMove('9')" data-page="9"
													class="btn-page next"> <span class="blind">다음</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>


	</section>
	<%@include file="/templates/kgm/footer.jsp"%>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/boardMain.js"></script>
</html>