<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ksj/paymentPageOk.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../kgm/header.jsp"/>
	<section id="contents" class="container">
		<div class="content-wrap frame-sm">
			<div class="result-page-top">
				<i class="ico-img-check"></i>
				<h2 class="title">
					주문이 <strong>완료</strong>되었습니다.
				</h2>
			</div>
			<!--// result-page-top -->
			<div class="orderer-info-box">
				<div class="inner-area">
					<div class="name-area">
						<h3 class="blind">수취인 정보</h3>
						<div class="inner">
							<i class="ico-bl-home"></i> <strong class="name"
								id="receiverName">김소진</strong>
						</div>
					</div>
					<div class="address-area">
						<div class="inner">
							<p class="addr">서울특별시 송파구 풍납동 221-25 영남빌라401호</p>
							<p class="phone">01074251457</p>
						</div>
					</div>
					<!-- wnsgml351 인수인계 추가 - 비회원 주문인 경우 배송지변경 버튼 미노출 처리 -->
					<a href="javascript:void(0);" class="btn-basic-sm btn-black"
						onclick="openUserDeliveryListPop();"><span>배송지변경</span></a>
				</div>
			</div>
			<!--// orderer-info-box -->
			<input type="hidden" id="viewType" value="finish">
			<div id="userDeliveryListPop" class="searchPop"></div>
			<!-- 주문 상품 내역 -->
			<div class="cart-list-area order-complete">
				<div class="list-head">
					<h3 class="tit">주문상품내역</h3>
				</div>
				<!--// lsit-head -->
				<ul class="cart-list">
					<li>
						<div class="prd-info-area">
							<div class="inner">
								<div class="column img">
									<a href="/product/view?productCd=F000003811"><img
										src="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20221216/IMG1671xDf175033465_100_100.jpg"
										alt="상품이미지"></a>
								</div>
								<div class="column tit">
									<p class="tit">
										<a href="/product/view?productCd=F000003811">hy 잇츠온 컵 떡볶이
											140g</a>
									</p>

									<p class="desc">로제 떡볶이 1팩</p>

									<p class="desc"></p>

									<ul class="price-item">
										<li><span class="num">2,900</span>원</li>
									</ul>
								</div>
								<div class="column ea">
									<span class="num">1</span>개
								</div>
								<div class="column price text-center">
									<span class="num">2,900</span>원
								</div>
							</div>
						</div>
						<!--// prd-info-area -->
					</li>
				</ul>
			</div>
			<!--// cart-list-area -->
			<!--// 주문 상품 내역 -->
			<div class="order-payment-area order-complete">
				<div class="order-info">
					<div class="list-head">
						<h3 class="title-list">주문자 정보</h3>
					</div>
					<!--// list-head -->
					<div class="inner">
						<div class="lineless-table type1">
							<table>
								<caption>주문자 정보</caption>
								<colgroup>
									<col style="width: 115px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">주문번호</th>
										<td>RK2304190003664604</td>
									</tr>
									<tr>
										<th scope="row">이름</th>
										<td>김소진</td>
									</tr>
									<tr>
										<th scope="row">배송지정보</th>
										<td>서울특별시 송파구 풍납동 221-25 영남빌라401호</td>
									</tr>
									<tr>
										<th scope="row">전화번호</th>
										<td>01074251457</td>
									</tr>
									<tr>
										<th scope="row">배송방법</th>
										<!-- 특급배송 + 일반배송, 일반배송, 특급배송 -->
										<td>일반배송</td>
									</tr>
									<tr>
										<th scope="row">배송메모</th>
										<td></td>
									</tr>
									<tr>
										<th scope="row">결제방법</th>
										<td>신용카드</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--// lineless-table -->
					</div>
				</div>
				<!--// order-info -->
				<div class="payment-info-box">
					<h3 class="tit type2">결제 금액</h3>
					<div class="order-price type2">
						<ul class="div-price">
							<li>
								<div class="list-inner">
									<span class="tit">상품금액</span>
									<p class="price">
										<strong class="num">2,900</strong> 원
									</p>
								</div>
							</li>

							<li>
								<div class="list-inner">
									<span class="tit">할인금액</span>
									<p class="price">
										<strong class="num"> 0</strong> 원
									</p>
								</div>
							</li>
							<li>
								<div class="list-inner">
									<span class="tit">배송비</span>
									<p class="price">
										<strong class="num">3,000</strong> 원
									</p>
								</div>
							</li>
						</ul>
						<div class="total-price">
							<div class="list-inner">
								<span class="tit">총 결제금액</span>
								<div class="price">
									<strong class="num">5,900</strong> 원
								</div>
							</div>
						</div>
						<div class="order-after" style="border-top: none;">
							<ul class="bl-list-type3">
								<li>고객님의 소중한 정보를 andud3426@naver.com 로 발송해드렸습니다.</li>
								<li>비회원으로 주문하신 경우 주문 확인시 주문번호가 필요하오니 꼭 기억해두세요.</li>
							</ul>
						</div>
					</div>
					<!--// order-price -->

				</div>
				<!--// payment-info-box -->
			</div>

			<div class="btn-bottom-area">
				<a href="/" class="btn-basic-xxlg btn-default"><span>쇼핑계속하기</span></a>
				<a href="/mypage/orderdetail?orderCd=RK2304190003664604"
					class="btn-basic-xxlg btn-primary"><span>주문 / 조회하기</span></a>
			</div>

			<div class="frame-sm"
				style="padding-top: 80px; text-align: center; margin: 0 auto;">
				<a
					href="https://www.rankingdak.com/promotion/event/view?eventCd=EM202207290000000034"><img
					src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230111/IMG1673NjP397616500.jpg"
					alt="주문완료배너"></a>
			</div>
		</div>
	</section>
	<jsp:include page="../kgm/footer.jsp"/>
</body>
</html>