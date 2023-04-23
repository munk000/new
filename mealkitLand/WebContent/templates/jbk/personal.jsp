<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
</head>
<body>
	<link rel="stylesheet" href="../../static/css/jbk/personal.css" />
	<title>공지사항</title>

	<!-- [Pub/Dev] 메인페이지의 경우 addClass main -->
	<div class="wrap " style>
		<%@include file="/templates/kgm/header.jsp" %>

		<!-- ========== 컨텐츠 영역 :: container ========== -->
		<section id="contents" class="container">

			<div class="content-wrap frame-sm">
				<div class="page-title-area">
					<h2 class="title-page">
						<a href="/service/center">고객센터</a>
					</h2>
				</div>
				<div class="frame-wrap">
					<div class="frame-left">
						<div class="aside-menu-wrap">
							<nav class="aside-menu">
								<ul class="menu-list">
									<li><a href="/service/notice" class="menu1">공지사항</a></li>
									<li><a href="/service/guide" class="menu2">이용안내</a></li>
									<!-- <li><a href="/service/faq" class="menu">자주묻는 FAQ</a></li>
									<li><a href="#"
										onclick="checkLogin('/mypage/userCounsel/regCouncel')"
										class="menu">1:1 문의하기</a></li>
									<li><a href="#" onclick="checkLogin('/service/voc')"
										class="menu">고객의소리</a></li> -->
								</ul>
							</nav>
							<!--// aside-menu -->

							<div class="aside-guide-box">
								<dl>
									<dt>랭킹닭컴 고객센터</dt>
									<dd class="phone-num">02-1234-1234</dd>
									<dd>
										평일 <span class="text-num-md">09:00 ~ 18:00</span>
									</dd>
									<dd>주말, 공휴일 휴무</dd>
								</dl>
								<dl>
									<dt>실시간 채팅 상담</dt>
									<dd>
										평일 <span class="text-num-md">09:00 ~ 21:00</span>
									</dd>
									<dd>
										토요일 <span class="text-num-md">09:00 ~ 15:00</span>
									</dd>
									<dd>
										일요일 <span class="text-num-md">13:00 ~ 21:00</span>
									</dd>
								</dl>
							</div>
							<!--// aside-guide-box -->
						</div>
						<!--// aside-menu-wrap -->
					</div>
					<!--// frame-left -->
					<div class="frame-right">
						<div class="frame-cnt-inner">

							<form id="frm" name="frm" action="/service/notice" method="get">
								<input type="hidden" name="pageSize" value="10"> <input
									type="hidden" name="nowPageNo" value="1">

								<div class="menu-title-area">
									<h3 class="title-menu">공지사항</h3>
									<div class="right">
										<div class="input-group-wrap box-type">
											<div class="input-group w225">
												<div class="input-group-form">
													<div class="ui-select select-box" data-value="">
														<a href="#none" title="" class="select-value"><span>전체</span></a>
														<input name="srchType" type="hidden" value="1">
														<div class="select-list">
															<ul>
																<li class="srchOpt" data-name="1"><a href="#none"><span>전체</span></a></li>
																<li class="srchOpt" data-name="2"><a href="#none"><span>제목</span></a></li>
																<li class="srchOpt" data-name="3"><a href="#none"><span>내용</span></a></li>
															</ul>
														</div>
													</div>
												</div>
												<!--// input-group-form -->
												<input type="text" id="item1-1" class="input-text"
													name="keyword" value=""> <span
													class="input-group-btn">
													<button type="button" class="btn-icon-search"
														id="noticeSrch" title="">
														<i class="ico-btn-search"></i><span class="blind">검색하기</span>
													</button>
												</span>
											</div>
											<!--// input-group -->
										</div>
										<!--// input-group-wrap -->
									</div>
								</div>

								<div class="board-list">
									<table>
										<caption>목록</caption>
										<colgroup>
											<col style="width: 80px">
											<col style="width: auto">
											<col style="width: 120px">
										</colgroup>
										<tbody>
											<tr>
												<td class="text-center"><i class="ico-bl-notice"><span
														class="blind">공지</span></i></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20230203000000000154"
													class="title-elps">영양성분 전수조사 결과 입장문</a></td>
												<td class="text-center"><span class="text-grey3">2023.02.03</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">152</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20230224000000000156"
													class="title-elps">2023년 3월 휴일 배송 안내</a></td>
												<td class="text-center"><span class="text-grey3">2023.02.24</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">151</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20230215000000000155"
													class="title-elps">새로워진 랭킹닭컴 멤버십 혜택을 소개합니다.</a></td>
												<td class="text-center"><span class="text-grey3">2023.02.15</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">150</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20230117000000000152"
													class="title-elps">2023년 설 연휴 배송 안내</a></td>
												<td class="text-center"><span class="text-grey3">2023.01.17</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">149</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20230103000000000150"
													class="title-elps">베스틱 닭가슴살 소시지 제품 관련하여 사과드립니다.</a></td>
												<td class="text-center"><span class="text-grey3">2023.01.03</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">148</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20221222000000000149"
													class="title-elps">개인정보처리방침 변경안내</a></td>
												<td class="text-center"><span class="text-grey3">2022.12.22</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">147</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20221006000000000148"
													class="title-elps">랭킹닭컴 오렌지 멤버 서비스 이용약관 변경 안내</a></td>
												<td class="text-center"><span class="text-grey3">2022.10.06</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">146</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20220928000000000147"
													class="title-elps">2022년 10월 휴일 배송 안내</a></td>
												<td class="text-center"><span class="text-grey3">2022.09.28</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">145</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20220923000000000146"
													class="title-elps">랭킹닭컴 고객 응대 서비스 일시 중단 공지</a></td>
												<td class="text-center"><span class="text-grey3">2022.09.23</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">144</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20220915000000000145"
													class="title-elps">랭킹닭컴 서비스 이용약관 변경 안내</a></td>
												<td class="text-center"><span class="text-grey3">2022.09.15</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="text-grey3">143</span></td>
												<td class="text-left"><a
													href="notice/view?noticeId=20220905000000000144"
													class="title-elps">태풍'힌남노'로 인한 배송지연 안내</a></td>
												<td class="text-center"><span class="text-grey3">2022.09.05</span>
												</td>
											</tr>

										</tbody>
									</table>
								</div>
								<!--// board-list -->
								<div class="page-bottom">
									<div class="pagination">

										<div class="pagging-wrap page-area">
											<div class="page-number">
												<div class="pagination mt20">
													<a href="javascript:CmPageMove('0')" data-page="0"
														class="btn-page prev"><span class="blind">이전</span></a> <a
														href="#" class="current"><span>1</span></a> <a
														href="javascript:CmPageMove('2')" data-page="2"><span>2</span></a>
													<a href="javascript:CmPageMove('3')" data-page="3"><span>3</span></a>
													<a href="javascript:CmPageMove('4')" data-page="4"><span>4</span></a>
													<a href="javascript:CmPageMove('5')" data-page="5"><span>5</span></a>
													<a href="javascript:CmPageMove('6')" data-page="6"><span>6</span></a>
													<a href="javascript:CmPageMove('7')" data-page="7"><span>7</span></a>
													<a href="javascript:CmPageMove('8')" data-page="8"><span>8</span></a>
													<a href="javascript:CmPageMove('9')" data-page="9"><span>9</span></a>
													<a href="javascript:CmPageMove('10')" data-page="10"><span>10</span></a>
													<a href="javascript:CmPageMove('11')" data-page="11"
														class="btn-page next"><span class="blind">다음</span></a>
												</div>
											</div>

										</div>
									</div>
								</div>
								<!--// page-bottom -->
							</form>
						</div>
					</div>
				</div>
				<!--frame-wrap-->
			</div>
			<!--// content-wrap -->

		</section>
		<!--// ========== 컨텐츠 영역 :: container ========== -->

<%@include file="/templates/kgm/footer.jsp" %>




</body>
</html>
